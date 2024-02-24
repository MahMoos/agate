part of 'models.dart';

@freezed
class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    required String id,
    required String name,
    String? imageUrl,
    String? parentId,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);
}

extension DepartmentModelEx on DepartmentModel {
  Department toEntity() => Department(
        id: id,
        name: name,
        parentId: parentId,
        logoUrl: imageUrl,
      );
}
