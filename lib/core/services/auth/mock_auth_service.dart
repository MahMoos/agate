part of 'auth_service.dart';

class MockAuthService implements AuthService {
  String? _accessToken;

  @override
  Future<String?> get accessToken => Future.value(_accessToken);

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
  Future<User> register(User user) {
    _accessToken = 'asldfjkalsjdkf';
    return Future.value(_currentUser);
  }

  @override
  Future<User?> signInWithCredentials(String username, String password) {
    if (username == '0780 000 0000' && password == 'asdf@1') {
      _accessToken = 'asldfjkalsjdkf';
      _setUser(const User(id: 'id', name: 'Admin', email: 'مدير'));
    } else if (username == '0780 000 9999' && password == 'asdfasdf') {
      _accessToken = 'asldfjkalsjdkf';
      _setUser(const User(id: 'id', name: 'Employee', email: 'موظف'));
    }
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
    _accessToken = null;
  }

  void _setUser(User? user) {
    _currentUser = user;
    _userStreamController.sink.add(user);
  }
}
