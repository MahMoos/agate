// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceModelImpl _$$BalanceModelImplFromJson(Map<String, dynamic> json) =>
    _$BalanceModelImpl(
      balance: json['balance'] as num,
      currency: json['currency'] as String? ?? 'IQD',
    );

Map<String, dynamic> _$$BalanceModelImplToJson(_$BalanceModelImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'currency': instance.currency,
    };

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

_$TransactionModelImpl _$$TransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionModelImpl(
      amount: json['amount'] as num,
      type: (json['type'] as num).toInt(),
      currency: json['currency'] as String? ?? 'IQD',
      note: json['note'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$$TransactionModelImplToJson(
        _$TransactionModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
      'currency': instance.currency,
      'note': instance.note,
      'createdDate': instance.createdDate?.toIso8601String(),
    };
