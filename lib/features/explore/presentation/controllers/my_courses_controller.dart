part of 'controllers.dart';

@Riverpod(keepAlive: true)
class MyCourses extends _$MyCourses with PaginationController<MyCourse> {
  late PaginatedParams _paginatedParams;
  late ExploreRepository _repo;

  @override
  Future<List<MyCourse>> build() async {
    _repo = await ref.watch(exploreRepositoryProvider.future);
    _paginatedParams = const PaginatedParams();
    return loadData();
  }

  @override
  FutureOr<List<MyCourse>> loadData() async {
    return GetMyCourses(_repo).call(_paginatedParams);
  }
}
