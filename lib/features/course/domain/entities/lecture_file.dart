part of 'entities.dart';

enum FileTypes {
  document,
  image,
  video,
}

@freezed
class LectureFile with _$LectureFile {
  const factory LectureFile({
    required String id,
    required FileTypes type,
    required String url,
    required String extension,
    required String name,
  }) = _LectureFile;
}
