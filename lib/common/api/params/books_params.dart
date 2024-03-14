part of '../api.dart';

class BooksParams extends PaginatedParams {
  const BooksParams({
    super.page,
    this.subjectId,
    this.title,
    this.author,
  });

  final String? subjectId;
  final String? title;
  final String? author;

  BooksParams copyWith({
    int? page,
    String? subjectId,
    String? title,
    String? author,
  }) =>
      BooksParams(
        page: page ?? super.page,
        subjectId: subjectId ?? this.subjectId,
        title: title ?? this.title,
        author: author ?? this.author,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (subjectId != null) 'SubjectId': subjectId,
        if (title != null) 'Title': title,
        if (author != null) 'Author': author,
      };

  @override
  BooksParams nextPage() => copyWith(page: page + 1);
}
