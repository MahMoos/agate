part of 'entities.dart';

@freezed
class Balance with _$Balance {
  const factory Balance({
    required double amount,
    @Default('IQD') String currency,
  }) = _Balance;
}

extension BalanceExtension on Balance {
  String toStringFormatted(BuildContext context) =>
      context.formatBalance(amount, currency);
}
