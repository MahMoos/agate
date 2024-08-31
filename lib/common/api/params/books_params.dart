part of '../api.dart';

class BooksParams extends PaginatedParams {
  const BooksParams({
    super.page,
    this.categoryId,
    this.title,
    this.author,
  });

  final String? categoryId;
  final String? title;
  final String? author;

  BooksParams copyWith({
    int? page,
    String? categoryId,
    String? title,
    String? author,
  }) =>
      BooksParams(
        page: page ?? super.page,
        categoryId: categoryId ?? this.categoryId,
        title: title ?? this.title,
        author: author ?? this.author,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (categoryId != null) 'BookCategoryId': categoryId,
        if (title != null) 'Title': title,
        if (author != null) 'Author': author,
      };

  @override
  BooksParams nextPage() => copyWith(page: page + 1);
}
