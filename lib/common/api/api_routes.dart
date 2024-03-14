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

  static Uri subject(String id) => _appUri(
        '/subjects/$id}',
      );

  static Uri books(BooksParams params) => _appUri(
        '/books',
        params.toJson(),
      );

  static Uri book(String id) => _appUri(
        '/books/$id}',
      );

  static Uri mcqGames(McqGamesParams params) => _appUri(
        '/mcqgames',
        params.toJson(),
      );

  static Uri mcqGame(String id) => _appUri(
        '/mcqgames/$id}',
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

  static Uri get wallet => _appUri(
        '/profiles/wallet',
      );

  static Uri transactions(TransactionsParams params) => _appUri(
        '/profiles/wallet/transactions',
        params.toJson(),
      );

  static Uri deposit(String cardId) => _appUri(
    '/profiles/wallet/deposit/$cardId',
      );
}
