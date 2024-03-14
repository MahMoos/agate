part of '../api.dart';

class McqGamesParams extends PaginatedParams {
  const McqGamesParams({
    super.page,
    this.subjectId,
    this.question,
    this.rate,
  });

  final String? subjectId;
  final String? question;
  final int? rate;

  McqGamesParams copyWith({
    int? page,
    String? subjectId,
    String? question,
    int? rate,
  }) =>
      McqGamesParams(
        page: page ?? super.page,
        subjectId: subjectId ?? this.subjectId,
        question: question ?? this.question,
        rate: rate ?? this.rate,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (subjectId != null) 'SubjectId': subjectId,
        if (question != null) 'Question': question,
        if (rate != null) 'Rate': rate,
      };

  @override
  McqGamesParams nextPage() => copyWith(page: page + 1);
}
