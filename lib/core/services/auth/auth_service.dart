import 'dart:core';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/models.dart';

part 'amplify_auth_service.dart';
part 'auth_service.g.dart';
part 'firebase_auth_service.dart';

@Riverpod(keepAlive: true)
Future<AuthService> authService(AuthServiceRef ref) async {
  final service = AmplifyAuthService();
  await service.initialize();
  return service;
}

abstract class AuthService {
  User? get currentUser;

  Future<String?> get accessToken;

  String? get refreshToken;

  Future<String?> renewToken();

  Future<User?> signInWithProvider(AuthProviders provider);

  Future<void> signOut();
}
