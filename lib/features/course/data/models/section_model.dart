part of 'models.dart';

@Freezed(toJson: false)
class SectionModel with _$SectionModel {
  const factory SectionModel({
    required String id,
    required String courseId,
    required String name,
    String? description,
    TeacherModel? teacher,
  }) = _SectionModel;

  factory SectionModel.fromJson(Map<String, dynamic> json) =>
      _$SectionModelFromJson(json);
}

extension SectionModelEx on SectionModel {
  Section toEntity() => Section(
    id: id,
        courseId: courseId,
        name: name,
        description: description,
        teacher: teacher?.toEntity(),
      );
}
