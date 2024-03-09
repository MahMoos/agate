part of 'entities.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required double amount,
    required TransactionType type,
    @Default('IQD') String currency,
    String? note,
    DateTime? createdAt,
  }) = _Transaction;
}
