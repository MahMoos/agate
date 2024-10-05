import '../../../../common/api/api.dart';
import '../../../../common/models/models.dart';
import '../../../../core/models/models.dart';
import '../models/models.dart';

abstract class ExploreDataSource extends RemoteDataSource {
  const ExploreDataSource(super.client);

  Future<HomeModel> getHome();

  Future<List<CourseModel>> getCourses(CoursesParams params);

  Future<List<MyCourseModel>> getMyCourses(PaginatedParams params);

  Future<List<DepartmentModel>> getDepartments(PaginatedParams params);

  Future<DepartmentModel> getDepartment(String id);

  Future<SubjectModel> getSubject(String id);

  Future<bool> subscribeToSubject(String id);

  Future<List<SubjectModel>> getSubjects(SubjectsParams params);

  Future<TeacherModel> getTeacher(String id);

  Future<List<TeacherModel>> getTeachers(PaginatedParams params);

  Future<BookModel> getBook(String id);

  Future<List<BookModel>> getBooks(BooksParams params);

  Future<SubjectModel> getBookCategory(String id);

  Future<List<SubjectModel>> getBookCategories(PaginatedParams params);

  Future<McqGameModel> getMcqGame(String id);

  Future<List<McqGameModel>> getMcqGames(McqGamesParams params);
}
