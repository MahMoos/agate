part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Departments extends _$Departments with PaginationController<Department> {
  late PaginatedParams _paginatedParams;

  @override
  Future<List<Department>> build() async {
    _paginatedParams = const PaginatedParams(pageSize: 1000);
    return loadData();
  }

  @override
  FutureOr<List<Department>> loadData() async {
    final service = await ref.getDebouncedHttpService();
    return GetDepartments(
      AgateExploreRepository(
        remote: AgateExploreDataSource(service),
      ),
    ).call(_paginatedParams);
  }
}

@riverpod
Future<Department> department(DepartmentRef ref, String id) async {
  final service = await ref.getDebouncedHttpService();
  final department = ref
      .watch(departmentsProvider.notifier)
      .data
      ?.firstWhereOrNull((department) => department.id == id);
  return department != null
      ? Future.value(department)
      : GetDepartment(
          AgateExploreRepository(
            remote: AgateExploreDataSource(service),
          ),
        ).call(id);
}
