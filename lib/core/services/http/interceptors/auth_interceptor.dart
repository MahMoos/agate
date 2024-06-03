import 'package:dio/dio.dart';

import '../../auth/auth_service.dart';

class AuthInterceptor extends Interceptor {
  const AuthInterceptor(this.authService);

  final AuthService authService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await authService.accessToken;
    options.headers.addAll({
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    });
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      await authService.signOut();
    }
    super.onError(err, handler);
  }
}
