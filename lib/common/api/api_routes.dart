part of 'api.dart';

class ApiRoutes {
  static const String baseUrl = String.fromEnvironment('API_BASE_URL');

  static Uri _appUri(String path, [Map<String, dynamic>? queryParameters]) =>
      Uri.parse(baseUrl)
          .replace(path: '/api/v1$path', queryParameters: queryParameters);

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

  static Uri subscribeToCourse(String courseId) => _appUri(
        '/courses/$courseId/subscribe',
      );

  static Uri subscribeToLecture({
    required String courseId,
    required String lectureId,
  }) =>
      _appUri(
        '/courses/$courseId/lectures/$lectureId/subscribe',
      );

  static Uri watchLecture({
    required String courseId,
    required String lectureId,
  }) =>
      _appUri(
        '/courses/$courseId/lectures/$lectureId/watch',
      );
}
