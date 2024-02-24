part of 'models.dart';

@freezed
class PreferencesModel with _$PreferencesModel {
  const factory PreferencesModel({
    required ThemeMode themeMode,
    required String language,
  }) = _PreferencesModel;

  factory PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$PreferencesModelFromJson(json);
}

extension PreferencesModelEx on PreferencesModel {
  Preferences toEntity() => Preferences(
        themeMode: themeMode,
        language: language,
      );
}

extension PreferencesEx on Preferences {
  PreferencesModel toModel() => PreferencesModel(
        themeMode: themeMode,
        language: language,
      );
}
