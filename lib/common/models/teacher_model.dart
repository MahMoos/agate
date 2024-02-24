part of 'models.dart';

@freezed
class TeacherModel with _$TeacherModel {
  const factory TeacherModel({
    required String id,
    required String name,
    String? specialization,
    String? degree,
    String? prefix,
    String? imageUrl,
    String? phoneNumber,
    String? email,
  }) = _TeacherModel;

  factory TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherModelFromJson(json);
}

extension TeacherModelEx on TeacherModel {
  Teacher toEntity() => Teacher(
        id: id,
        name: name,
        specialization: specialization,
        degree: degree,
        prefix: prefix,
        photoUrl: imageUrl,
        phoneNumber: phoneNumber,
        email: email,
      );
}
