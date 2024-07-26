part of 'auth_service.dart';

class AgateAuthService implements AuthService {
  String? _accessToken;
  String? _refreshToken;
  String? _deviceId;

  Future<void> initialize() async {
    _accessToken = await accessToken;
    _deviceId = await deviceId;
    if (_accessToken != null) {
      _currentUser = await _getUser();
      _userStreamController.sink.add(_currentUser);
    }
  }

  @override
  Future<String?> get accessToken => _accessToken != null
      ? Future.value(_accessToken)
      : FlutterKeychain.get(key: 'access_token');

  Future<String> get deviceId async {
    if (_deviceId != null) return Future.value(_deviceId);
    final id = await FlutterKeychain.get(key: 'device_id');
    if (id != null) return id;
    const uuid = Uuid();
    final uid = uuid.v8g();
    await FlutterKeychain.put(key: 'device_id', value: uid);
    return uid;
  }

  User? _currentUser;

  @override
  User? get currentUser => _currentUser;

  final _userStreamController = StreamController<User?>();

  @override
  Future<String?> get refreshToken => _refreshToken != null
      ? Future.value(_refreshToken)
      : FlutterKeychain.get(key: 'refresh_token');

  @override
  Future<String?> renewToken() async {
    return _accessToken = await DioHttpService().post<String>(
      ApiRoutes.refreshToken,
      headers: {
        'Content-Type': 'application/json',
        if (_accessToken != null) 'Authorization': 'Bearer $_accessToken',
        if (_refreshToken != null) 'X-RefreshToken': _refreshToken,
        'X-DeviceId': _deviceId,
      },
      parser: (data) => data['token'] as String,
    );
  }

  @override
  Stream<User?> userChanges() {
    return _userStreamController.stream;
  }

  @override
  Future<User> register(User user) async {
    User? newUser = await DioHttpService().post<User>(
      ApiRoutes.register,
      parser: (json) => User.fromJson(json as Map<String, dynamic>),
      data: user.toJson(),
      headers: {
        'Content-Type': 'application/json',
        'X-DeviceId': _deviceId,
      },
    );
    await _setTokens(newUser.accessToken, newUser.refreshToken);
    if (_accessToken != null && newUser.id != null) {
      newUser = await _getUser();
      _setUser(newUser);
    } else {
      _setUser(null);
    }
    return Future.value(newUser);
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
      headers: {
        'Content-Type': 'application/json',
        'X-DeviceId': _deviceId,
      },
    );
    await _setTokens(_currentUser?.accessToken, currentUser?.refreshToken);
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
    await _setTokens(null, null);
  }

  void _setUser(User? user) {
    _currentUser = user;
    _userStreamController.sink.add(user);
  }

  Future<User?> _getUser() async {
    try {
      final user = await DioHttpService().get<User>(
        ApiRoutes.myProfile,
        parser: (json) => User.fromJson(json as Map<String, dynamic>),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_accessToken',
          'X-DeviceId': _deviceId,
        },
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

  Future<void> _setTokens(String? accessToken, String? refreshToken) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    return Future.wait([
      if (accessToken != null)
        FlutterKeychain.put(key: 'access_token', value: accessToken)
      else
        FlutterKeychain.remove(key: 'access_token'),
      if (refreshToken != null)
        FlutterKeychain.put(key: 'refresh_token', value: refreshToken)
      else
        FlutterKeychain.remove(key: 'refresh_token'),
    ]);
  }
}
