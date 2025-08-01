part of 'extensions.dart';

extension FutureResponseExtension on Future<Response<dynamic>> {
  /// Processes the [Response] and returns the parsed data as [T] and throws an
  /// [Exception] if the [Response] is not successful.
  Future<T> process<T>(T Function(dynamic) parser) async {
    try {
      final response = await this;

      return compute<dynamic, T>(parser, response.data);
    } on DioException catch (e, stacktrace) {
      throw _handleException(e, stacktrace);
    }
  }

  /// Processes the [Response] and returns the parsed data as [List<T>] and
  /// throws an [Exception] if the [Response] is not successful.
  Future<List<T>> processList<T>(T Function(dynamic) parser) async {
    try {
      final response = await this;

      List<T> parseList(
        List<dynamic> data,
      ) =>
          data.map(parser).toList();

      return compute(parseList, response.data as List<dynamic>);
    } on DioException catch (e, stacktrace) {
      throw _handleException(e, stacktrace);
    }
  }

  Exception _handleException(DioException e, StackTrace stacktrace) {
    log(
      e.toString(),
      name:
          e.type != DioExceptionType.unknown ? 'NetworkError' : 'ProcessError',
      error: e,
      stackTrace: stacktrace,
    );
    return e.toException();
  }
}

extension DioExceptionExtension on DioException {
  /// Handles the [DioException] and returns the appropriate [Exception]
  Exception toException() {
    if (response?.statusCode == 401) {
      return UnauthorizedException(message);
    }
    switch (type) {
      case DioExceptionType.connectionError:
        return SocketException(
          message ?? response?.data.toString() ?? error.toString(),
        );
      case DioExceptionType.connectionTimeout ||
            DioExceptionType.receiveTimeout ||
            DioExceptionType.sendTimeout:
        return TimeoutException(message);
      case DioExceptionType.badResponse || DioExceptionType.badCertificate:
        return HttpException(
          title: response?.data?['title']?.toString(),
          message: response?.data.toString() ??
              response?.statusMessage ??
              message ??
              error.toString(),
          statusCode: response?.statusCode,
        );
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
        return HttpException(
          title: response?.data?['title']?.toString(),
          message: message ?? response?.data.toString() ?? error.toString(),
          statusCode: response?.statusCode,
        );
    }
  }
}
