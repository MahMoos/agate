import '../../../../common/api/api.dart';
import '../../../../common/models/models.dart';
import '../../../../core/models/models.dart';
import '../models/models.dart';
import 'explore_data_source.dart';

class AgateExploreDataSource extends ExploreDataSource {
  const AgateExploreDataSource(super.client);

  @override
  Future<HomeModel> getHome() async {
    return client.get<HomeModel>(
      ApiRoutes.home,
      parser: (json) => HomeModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<CourseModel>> getCourses(CoursesParams params) async {
    return client.getList<CourseModel>(
      ApiRoutes.courses(params),
      parser: (json) => CourseModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<MyCourseModel>> getMyCourses(PaginatedParams params) async {
    return client.getList<MyCourseModel>(
      ApiRoutes.myCourses(params),
      parser: (json) => MyCourseModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<DepartmentModel>> getDepartments(PaginatedParams params) {
    return client.getList<DepartmentModel>(
      ApiRoutes.divisions(params),
      parser: (json) => DepartmentModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<DepartmentModel> getDepartment(String id) {
    return client.get<DepartmentModel>(
      ApiRoutes.division(id),
      parser: (json) => DepartmentModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<SubjectModel> getSubject(String id) {
    return client.get<SubjectModel>(
      ApiRoutes.subject(id),
      parser: (json) => SubjectModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<bool> subscribeToSubject(String id) {
    return client.post<bool>(
      ApiRoutes.subscribeToSubject(id),
      data: null,
      parser: (data) => true,
    );
  }

  @override
  Future<List<SubjectModel>> getSubjects(SubjectsParams params) {
    return client.getList<SubjectModel>(
      ApiRoutes.subjects(params),
      parser: (json) => SubjectModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<TeacherModel> getTeacher(String id) {
    return client.get<TeacherModel>(
      ApiRoutes.teacher(id),
      parser: (json) => TeacherModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<TeacherModel>> getTeachers(PaginatedParams params) {
    return client.getList<TeacherModel>(
      ApiRoutes.teachers(params),
      parser: (json) => TeacherModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BookModel> getBook(String id) {
    return client.get<BookModel>(
      ApiRoutes.book(id),
      parser: (json) => BookModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<BookModel>> getBooks(BooksParams params) {
    return client.getList<BookModel>(
      ApiRoutes.books(params),
      parser: (json) => BookModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<SubjectModel> getBookCategory(String id) {
    return client.get<SubjectModel>(
      ApiRoutes.bookCategory(id),
      parser: (json) => SubjectModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<SubjectModel>> getBookCategories(PaginatedParams params) {
    return client.getList<SubjectModel>(
      ApiRoutes.bookCategories(params),
      parser: (json) => SubjectModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<McqGameModel> getMcqGame(String id) {
    return client.get<McqGameModel>(
      ApiRoutes.mcqGame(id),
      parser: (json) => McqGameModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<McqGameModel>> getMcqGames(McqGamesParams params) {
    return client.getList<McqGameModel>(
      ApiRoutes.mcqGames(params),
      parser: (json) => McqGameModel.fromJson(json as Map<String, dynamic>),
    );
  }
}
