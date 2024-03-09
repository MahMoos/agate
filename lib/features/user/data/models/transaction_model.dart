part of 'models.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required num amount,
    required int type,
    @Default('IQD') String currency,
    String? note,
    DateTime? createdDate,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

extension TransactionModelEx on TransactionModel {
  Transaction toEntity() => Transaction(
        amount: amount.toDouble(),
        type: TransactionType.values[type],
        currency: currency,
        note: note,
        createdAt: createdDate,
      );
}
