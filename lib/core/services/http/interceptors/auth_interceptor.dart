import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../auth/auth_service.dart';

class AuthInterceptor extends Interceptor {
  const AuthInterceptor(this.authService);

  final AuthService authService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    var token = await authService.accessToken;
    final deviceId = await (authService as AgateAuthService).deviceId;
    if (token != null && JwtDecoder.isExpired(token)) {
      token = await authService.renewToken();
    }
    options.headers.addAll({
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
      'X-DeviceId': deviceId,
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
