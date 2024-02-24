part of 'entities.dart';

@freezed
class Preferences with _$Preferences {
  const factory Preferences({
    required ThemeMode themeMode,
    required String language,
  }) = _Preferences;
}
