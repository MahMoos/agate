part of 'controllers.dart';

@Riverpod(keepAlive: true)
class MyCourses extends _$MyCourses with PaginationController<MyCourse> {
  late GetMyCourses _getMyCourses;

  @override
  Future<List<MyCourse>> build() async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    _getMyCourses = GetMyCourses(repository);
    return loadData();
  }

  @override
  FutureOr<List<MyCourse>> loadData() async {
    return _getMyCourses(paginatedParams);
  }
}
