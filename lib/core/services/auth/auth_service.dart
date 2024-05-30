import 'dart:async';
import 'dart:core';

import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/api/api.dart';
import '../../models/models.dart';
import '../http/http_service.dart';

part 'agate_auth_service.dart';
part 'auth_service.g.dart';
part 'mock_auth_service.dart';

@Riverpod(keepAlive: true)
Future<AuthService> authService(AuthServiceRef ref) async {
  final service = AgateAuthService();
  return service;
}

abstract class AuthService {
  User? get currentUser;

  Future<String?> get accessToken;

  String? get refreshToken;

  Future<String?> renewToken();

  Stream<User?> userChanges();

  Future<User> register(User user);

  Future<User?> signInWithCredentials(String username, String password);

  Future<User?> signInWithProvider(AuthProviders provider);

  Future<void> signOut();
}
