import '../../../../common/api/api.dart';
import '../../../../common/entities/entities.dart';
import '../../../../common/models/models.dart';
import '../../../../core/models/models.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/explore_repository.dart';
import '../data_sources/explore_data_source.dart';
import '../models/models.dart';

class AgateExploreRepository extends BaseRepository
    implements ExploreRepository {
  const AgateExploreRepository({required this.remote})
      : super(remoteDataSource: remote);

  final ExploreDataSource remote;

  @override
  Future<Home> getHome() async {
    return (await remote.getHome()).toEntity();
  }

  @override
  Future<List<Course>> getCourses(CoursesParams params) async {
    return (await remote.getCourses(params)).map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<MyCourse>> getMyCourses(PaginatedParams params) async {
    return (await remote.getMyCourses(params))
        .map((e) => e.toEntity())
        .toList();
  }

  @override
  Future<List<Department>> getDepartments(PaginatedParams params) async {
    return _processDepartments(
      (await remote.getDepartments(params)).map((e) => e.toEntity()).toList(),
    );
  }

  @override
  Future<Department> getDepartment(String id) async {
    return (await remote.getDepartment(id)).toEntity();
  }

  List<Department> _processDepartments(List<Department> departments) {
    if (departments.isEmpty) return departments;
    final lookup = <String, Department>{};
    for (final department in departments) {
      lookup[department.id] = department;
    }
    for (final department in departments) {
      if (department.parentId != null) {
        final parent = lookup[department.parentId]!;
        if (parent.subDepartments == null || parent.subDepartments!.isEmpty) {
          lookup[department.parentId!] =
              parent.copyWith(subDepartments: [department]);
        } else {
          lookup[department.parentId!] = parent.copyWith(
            subDepartments: [
              ...parent.subDepartments!,
              department,
            ],
          );
        }
      }
    }
    return lookup.values
        .where((department) => department.parentId == null)
        .toList();
  }

  @override
  Future<Subject> getSubject(String id) async {
    return (await remote.getSubject(id)).toEntity();
  }

  @override
  Future<List<Subject>> getSubjects(SubjectsParams params) async {
    return (await remote.getSubjects(params)).map((e) => e.toEntity()).toList();
  }

  @override
  Future<Book> getBook(String id) async {
    return (await remote.getBook(id)).toEntity();
  }

  @override
  Future<List<Book>> getBooks(BooksParams params) async {
    return (await remote.getBooks(params)).map((e) => e.toEntity()).toList();
  }

  @override
  Future<McqGame> getMcqGame(String id) async {
    return (await remote.getMcqGame(id)).toEntity();
  }

  @override
  Future<List<McqGame>> getMcqGames(McqGamesParams params) async {
    return (await remote.getMcqGames(params)).map((e) => e.toEntity()).toList();
  }
}
