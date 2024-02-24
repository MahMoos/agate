part of 'controllers.dart';

@Riverpod(keepAlive: true)
class MyCourses extends _$MyCourses with PaginationController<MyCourse> {
  late PaginatedParams _paginatedParams;

  @override
  Future<List<MyCourse>> build() async {
    _paginatedParams = const PaginatedParams();
    return loadData();
  }

  @override
  FutureOr<List<MyCourse>> loadData() async {
    final service = await ref.getDebouncedHttpService();
    return GetMyCourses(
      AgateExploreRepository(
        remote: AgateExploreDataSource(service),
      ),
    ).call(_paginatedParams);
  }
}
