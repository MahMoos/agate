part of 'entities.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String id,
    String? imageUrl,
    String? title,
    String? description,
    String? author,
    int? numberOfPages,
    DateTime? publishedAt,
    String? url,
    String? extension,
    double? size,
  }) = _Book;
}
