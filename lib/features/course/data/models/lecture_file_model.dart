part of 'models.dart';

@freezed
class LectureFileModel with _$LectureFileModel {
  const factory LectureFileModel({
    required String id,
    required int type,
    required String url,
    required String extension,
    required String name,
  }) = _LectureFileModel;

  factory LectureFileModel.fromJson(Map<String, dynamic> json) =>
      _$LectureFileModelFromJson(json);
}

extension LectureFileModelEx on LectureFileModel {
  LectureFile toEntity() => LectureFile(
        id: id,
        type: FileTypes.values[type],
        url: url,
        extension: extension,
        name: name,
      );
}
