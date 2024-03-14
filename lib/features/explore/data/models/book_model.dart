part of 'models.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required String id,
    String? imageUrl,
    String? title,
    String? description,
    String? author,
    int? numberOfPages,
    DateTime? publication,
    List<FileModel>? files,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}

extension BookModelEx on BookModel {
  Book toEntity() => Book(
        id: id,
        imageUrl: imageUrl,
        title: title,
        description: description,
        author: author,
        numberOfPages: numberOfPages,
        publishedAt: publication,
        extension: files?.firstOrNull?.extension,
        url: files?.firstOrNull?.url,
        size: files?.firstOrNull?.size,
      );
}
