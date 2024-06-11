import '../../../../common/api/api.dart';
import '../../../../common/entities/entities.dart';
import '../../../../core/models/models.dart';
import '../entities/entities.dart';

abstract class ExploreRepository {
  Future<Home> getHome();

  Future<List<Course>> getCourses(CoursesParams params);

  Future<List<MyCourse>> getMyCourses(PaginatedParams params);

  Future<List<Department>> getDepartments(PaginatedParams params);

  Future<Department> getDepartment(String id);

  Future<Subject> getSubject(String id);

  Future<List<Subject>> getSubjects(SubjectsParams params);

  Future<Book> getBook(String id);

  Future<List<Book>> getBooks(BooksParams params);

  Future<McqGame> getMcqGame(String id);

  Future<List<McqGame>> getMcqGames(McqGamesParams params);
}
