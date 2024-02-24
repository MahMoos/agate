// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferencesModelImpl _$$PreferencesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferencesModelImpl(
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
      language: json['language'] as String,
    );

Map<String, dynamic> _$$PreferencesModelImplToJson(
        _$PreferencesModelImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'language': instance.language,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
