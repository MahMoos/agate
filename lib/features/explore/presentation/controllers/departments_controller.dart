part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Departments extends _$Departments with PaginationController<Department> {
  late GetDepartments _getDepartments;

  @override
  Future<List<Department>> build() async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    paginatedParams = const PaginatedParams(pageSize: 1000);
    _getDepartments = GetDepartments(repository);
    return loadData();
  }

  @override
  FutureOr<List<Department>> loadData() async {
    return _getDepartments(paginatedParams);
  }
}

@riverpod
Future<Department> department(DepartmentRef ref, String id) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  final department = ref
      .watch(departmentsProvider.notifier)
      .data
      ?.flattenTree()
      .firstWhereOrNull((department) => department.id == id);
  return department != null
      ? Future.value(department)
      : GetDepartment(repo).call(id);
}

extension ListExtension on List<Department> {
  List<Department> flattenTree() {
    return map(
      (department) => [
        department,
        ...?department.subDepartments?.flattenTree(),
      ],
    ).flattened.toList();
  }
}
