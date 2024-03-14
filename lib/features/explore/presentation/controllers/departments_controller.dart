part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Departments extends _$Departments with PaginationController<Department> {
  late PaginatedParams _paginatedParams;
  late ExploreRepository _repo;

  @override
  Future<List<Department>> build() async {
    _repo = await ref.watch(exploreRepositoryProvider.future);
    _paginatedParams = const PaginatedParams(pageSize: 1000);
    return loadData();
  }

  @override
  FutureOr<List<Department>> loadData() async {
    return GetDepartments(_repo).call(_paginatedParams);
  }
}

@riverpod
Future<Department> department(DepartmentRef ref, String id) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  final department = ref
      .watch(departmentsProvider.notifier)
      .data
      ?.firstWhereOrNull((department) => department.id == id);
  return department != null
      ? Future.value(department)
      : GetDepartment(repo).call(id);
}
