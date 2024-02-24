part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Courses extends _$Courses with PaginationController<Course> {
  late CoursesParams _paginatedParams;

  @override
  Future<List<Course>> build(CoursesParams params) async {
    _paginatedParams = params;
    return loadData();
  }

  @override
  FutureOr<List<Course>> loadData() async {
    final service = await ref.getDebouncedHttpService();
    return GetCourses(
      AgateExploreRepository(
        remote: AgateExploreDataSource(service),
      ),
    ).call(_paginatedParams);
  }
}

final coursesParamsProvider = StateProvider<CoursesParams>(
  (ref) => const CoursesParams(),
);
