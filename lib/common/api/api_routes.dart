part of 'api.dart';

class ApiRoutes {
  static const String baseUrl = String.fromEnvironment('API_BASE_URL');

  static Uri _appUri(String path, [Map<String, dynamic>? queryParameters]) =>
      Uri.parse(baseUrl)
          .replace(path: '/api/v1$path', queryParameters: queryParameters);

  static Uri _authUri(String path, [Map<String, dynamic>? queryParameters]) =>
      _appUri('/auth$path', queryParameters);

  static Uri get login => _authUri('/login');

  static Uri get refreshToken => _authUri('/refresh');

  static Uri get register => _authUri('/register');

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

  static Uri get universities => _appUri(
        '/divisions/universities',
      );

  static Uri subjects(PaginatedParams params) => _appUri(
        '/subjects',
        params.toJson(),
      );

  static Uri subject(String id) => _appUri(
        '/subjects/$id',
      );

  static Uri teachers(PaginatedParams params) {
    final p = params.toJson()..putIfAbsent('Type', () => '1');
    return _appUri(
      '/users',
      p,
    );
  }

  static Uri teacher(String id) => _appUri(
        '/users/$id',
      );

  static Uri books(BooksParams params) => _appUri(
        '/books',
        params.toJson(),
      );

  static Uri book(String id) => _appUri(
        '/books/$id',
      );

  static Uri bookCategories(PaginatedParams params) => _appUri(
        '/bookCategories',
        params.toJson(),
      );

  static Uri bookCategory(String id) => _appUri(
        '/bookCategories/$id',
      );

  static Uri mcqGames(McqGamesParams params) => _appUri(
        '/mcqgames',
        params.toJson(),
      );

  static Uri mcqGame(String id) => _appUri(
        '/mcqgames/$id',
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

  static Uri reviews({
    required String courseId,
    String? lectureId,
  }) =>
      _appUri(
        '/courses/$courseId${lectureId != null ? '/lectures/$lectureId/reviews' : '/reviews'}',
      );

  static Uri watchLecture({
    required String courseId,
    required String lectureId,
  }) =>
      _appUri(
        '/courses/$courseId/lectures/$lectureId/watch',
      );

  static Uri _usersUri(String path, [Map<String, dynamic>? queryParameters]) =>
      _appUri('/users$path', queryParameters);

  static Uri get myProfile => _usersUri(
        '/mine',
      );

  static Uri profile(String id) => _usersUri(
        '/$id',
      );

  static Uri get wallet => _usersUri(
        '/wallet',
      );

  static Uri transactions(TransactionsParams params) => _usersUri(
        '/wallet/transactions',
        params.toJson(),
      );

  static Uri deposit(String cardId) => _usersUri(
        '/wallet/deposit/$cardId',
      );

  static Uri get resources => _appUri(
        '/resources',
      );
}
