part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Subjects extends _$Subjects with PaginationController<Subject> {
  late PaginatedParams _paginatedParams;

  @override
  Future<List<Subject>> build() async {
    _paginatedParams = const PaginatedParams(pageSize: 1000);
    return loadData();
  }

  @override
  FutureOr<List<Subject>> loadData() async {
    final service = await ref.getDebouncedHttpService();
    return GetSubjects(
      AgateExploreRepository(
        remote: AgateExploreDataSource(service),
      ),
    ).call(_paginatedParams);
  }
}
