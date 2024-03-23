part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Courses extends _$Courses with PaginationController<Course> {
  late GetCourses _getCourses;

  @override
  Future<List<Course>> build(CoursesParams params) async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    paginatedParams = params;
    _getCourses = GetCourses(repository);
    return loadData();
  }

  @override
  FutureOr<List<Course>> loadData() async {
    return _getCourses(paginatedParams as CoursesParams);
  }
}

final coursesParamsProvider = StateProvider<CoursesParams>(
  (ref) => const CoursesParams(),
);
