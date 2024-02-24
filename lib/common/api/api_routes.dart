part of 'api.dart';

class ApiRoutes {
  static const String baseUrl = 'localhost:8090/api/v1';

  static Uri _appUri(String path, [Map<String, dynamic>? queryParameters]) =>
      kDebugMode
          ? Uri(
              scheme: 'http',
              host: '185.197.251.107',
              port: 8090,
              // host: '192.168.0.110',
              // port: 3000,
              path: '/api/v1$path',
              queryParameters: queryParameters,
            )
          : Uri.https(baseUrl, path, queryParameters);

  static Uri get home => _appUri(
        '/home',
      );

  static Uri course(String id) => _appUri(
        '/courses/$id',
      );

  static Uri courses(CoursesParams params) => _appUri(
        '/courses',
        params.toJson(),
      );

  static Uri myCourses(PaginatedParams params) => _appUri(
        '/courses/mine',
        params.toJson(),
      );

  static Uri lecture(String id) => _appUri(
        '/lectures/$id',
      );

  static Uri lectures(LecturesParams params) => _appUri(
        '/lectures',
        params.toJson(),
      );

  static Uri section(String id) => _appUri(
        '/sections/$id',
      );

  static Uri sections(SectionsParams params) => _appUri(
        '/sections',
        params.toJson(),
      );

  static Uri divisions(PaginatedParams params) => _appUri(
        '/divisions',
        params.toJson(),
      );

  static Uri division(String id) => _appUri(
        '/divisions/$id',
      );

  static Uri subjects(PaginatedParams params) => _appUri(
        '/subjects',
        params.toJson(),
      );
}
