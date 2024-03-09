part of 'models.dart';

@freezed
class BalanceModel with _$BalanceModel {
  const factory BalanceModel({
    required num balance,
    @Default('IQD') String currency,
  }) = _BalanceModel;

  factory BalanceModel.fromJson(Map<String, dynamic> json) =>
      _$BalanceModelFromJson(json);
}

extension BalanceModelEx on BalanceModel {
  Balance toEntity() => Balance(
        amount: balance.toDouble(),
        currency: currency,
      );
}
