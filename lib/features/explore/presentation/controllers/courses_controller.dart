part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Courses extends _$Courses with PaginationController<Course> {
  late CoursesParams _paginatedParams;
  late ExploreRepository _repo;

  @override
  Future<List<Course>> build(CoursesParams params) async {
    _repo = await ref.watch(exploreRepositoryProvider.future);
    _paginatedParams = params;
    return loadData();
  }

  @override
  FutureOr<List<Course>> loadData() async {
    return GetCourses(_repo).call(_paginatedParams);
  }
}

final coursesParamsProvider = StateProvider<CoursesParams>(
  (ref) => const CoursesParams(),
);
