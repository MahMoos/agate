part of '../api.dart';

class TransactionsParams extends PaginatedParams {
  const TransactionsParams({
    super.page,
    this.language,
    this.type,
  });

  final String? language;
  final TransactionType? type;

  TransactionsParams copyWith({
    int? page,
    String? language,
    TransactionType? type,
  }) =>
      TransactionsParams(
        page: page ?? super.page,
        language: language ?? this.language,
        type: type ?? this.type,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (language != null) 'Language': language == 'ar' ? '0' : '1',
        if (type != null) 'Type': type!.index.toString(),
      };

  @override
  TransactionsParams nextPage() => copyWith(page: page + 1);
}
