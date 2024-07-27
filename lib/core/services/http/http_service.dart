import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import '../../../common/api/api.dart';
import '../../extensions/extensions.dart';
import '../auth/auth_service.dart';
import '../logger/logger.dart';
import 'interceptors/auth_interceptor.dart';

part 'dio_http_service.dart';
part 'http_service.g.dart';

/// Provider that maps an [HttpService] interface to implementation
@Riverpod(keepAlive: true)
Future<HttpService> httpService(HttpServiceRef ref) async {
  final authService = await ref.watch(authServiceProvider.future);
  final service = DioHttpService()
    ..addInterceptor(AuthInterceptor(authService))
    ..addInterceptor(
      TalkerDioLogger(
        talker: talker,
        settings: TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
          requestFilter: (RequestOptions options) =>
              options.uri != ApiRoutes.login &&
              options.uri != ApiRoutes.register,
        ),
      ),
    );
  return service;
}

/// Http Service Interface
abstract class HttpService {
  /// Http headers
  Map<String, String> get headers;

  /// Http get request
  Future<T> get<T>(
    Uri uri, {
    required T Function(dynamic) parser,
    Map<String, dynamic>? headers,
  });

  Future<List<T>> getList<T>(
    Uri uri, {
    required T Function(dynamic) parser,
    Map<String, dynamic>? headers,
  });

  /// Http post request
  Future<T> post<T>(
    Uri uri, {
    required dynamic data,
    required T Function(dynamic) parser,
    Map<String, dynamic>? headers,
  });

  /// Http put request
  Future<T> put<T>(
    Uri uri, {
    required dynamic data,
    required T Function(dynamic) parser,
    Map<String, dynamic>? headers,
  });

  /// Http patch request
  Future<T> patch<T>(
    Uri uri, {
    required dynamic data,
    required T Function(dynamic) parser,
    Map<String, dynamic>? headers,
  });

  /// Http delete request
  Future<T> delete<T>(
    Uri uri, {
    required T Function(dynamic) parser,
    dynamic data,
    Map<String, dynamic>? headers,
  });

  void close({bool force = false});
}
