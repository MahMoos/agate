part of 'models.dart';

@freezed
class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    required String id,
    String? name,
    String? title,
    String? description,
    String? imageUrl,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);
}

extension SubjectModelEx on SubjectModel {
  Subject toEntity() => Subject(
        id: id,
        name: title ?? name ?? '',
        description: description,
        imageUrl: imageUrl,
      );
}
