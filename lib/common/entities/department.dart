part of 'entities.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required String id,
    required String name,
    String? parentId,
    String? logoUrl,
    List<Department>? subDepartments,
  }) = _Department;
}
