part of 'auth_service.dart';

class AgateAuthService implements AuthService {
  String? _accessToken;

  Future<void> initialize() async {
    _accessToken = await accessToken;
    if (_accessToken != null) {
      _currentUser = await _getUser();
      _userStreamController.sink.add(_currentUser);
    }
  }

  @override
  Future<String?> get accessToken => _accessToken != null
      ? Future.value(_accessToken)
      : FlutterKeychain.get(key: 'token');

  User? _currentUser;

  @override
  User? get currentUser => _currentUser;

  final _userStreamController = StreamController<User?>();

  @override
  String? get refreshToken => '';

  @override
  Future<String?> renewToken() => Future.value('');

  @override
  Stream<User?> userChanges() {
    return _userStreamController.stream;
  }

  @override
  Future<User> register(User user) async {
    _currentUser = await DioHttpService().post<User>(
      ApiRoutes.register,
      parser: (json) => User.fromJson(json as Map<String, dynamic>),
      data: user.toJson(),
    );
    _currentUser = await _getUser();
    _setUser(_currentUser);
    return Future.value(_currentUser);
  }

  @override
  Future<User?> signInWithCredentials(String username, String password) async {
    _currentUser = await DioHttpService().post<User>(
      ApiRoutes.login,
      parser: (json) => User.fromJson(json as Map<String, dynamic>),
      data: {
        'userName': username,
        'password': password,
      },
    );
    _currentUser = await _getUser();
    _setUser(_currentUser);
    return Future.value(_currentUser);
  }

  @override
  Future<User?> signInWithProvider(AuthProviders provider) {
    // TODO: implement signInWithProvider
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    _setUser(null);
  }

  void _setUser(User? user) {
    _currentUser = user;
    _setToken(user?.token);
    _userStreamController.sink.add(user);
  }

  Future<User?> _getUser() async {
    try {
      final user = await DioHttpService().get<User>(
        ApiRoutes.myProfile,
        parser: (json) => User.fromJson(json as Map<String, dynamic>),
        headers: {'Authorization': 'Bearer $_accessToken'},
      );
      return user;
    } on Exception catch (e) {
      if (kDebugMode) print(e);
      if (e is UnauthorizedException) {
        await signOut();
      }
    }
    return null;
  }

  Future<void> _setToken(String? token) {
    _accessToken = token;
    return token != null
        ? FlutterKeychain.put(key: 'token', value: token)
        : FlutterKeychain.remove(key: 'token');
  }
}
