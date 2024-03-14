part of 'models.dart';

enum FileType { document, image, video }

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required String id,
    required String url,
    String? name,
    String? description,
    String? extension,
    double? size,
    FileType? type,
  }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}
