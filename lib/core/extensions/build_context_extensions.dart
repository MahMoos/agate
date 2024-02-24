part of 'extensions.dart';

extension BuildContextExtensions on BuildContext {
  /// Formats [money] to a number with [currency] according to the [currency]
  /// and locale.
  String formatMoney(double money, [String? currency]) {
    currency = currency ?? 'IQD';
    return NumberFormat.currency(
      decimalDigits: currency == 'IQD' ? 0 : 2,
      customPattern: currency == 'IQD'
          ? '##,### ${AppLocalizations.of(this).currency(currency)}'
          : '##,###.## ${AppLocalizations.of(this).currency(currency)}',
    ).format(money);
  }

  /// A number format for compact representations, e.g. "1.2M" instead
  /// of "1,200,000".
  String formatIntCompact(int number) {
    return NumberFormat.compact().format(number);
  }

  /// All app localizations strings
  AppLocalizations get strings => AppLocalizations.of(this);

  /// Returns true if the current locale is RTL (e.g. Arabic).
  bool get isRTL =>
      Bidi.isRtlLanguage(Localizations.localeOf(this).languageCode);

  /// Shows a [SnackBar]
  void showSnackBar(SnackBar snackBar) =>
      ScaffoldMessenger.of(this).showSnackBar(snackBar);
}
