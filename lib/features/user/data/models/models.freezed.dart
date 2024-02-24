// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) {
  return _PreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$PreferencesModel {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesModelCopyWith<PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesModelCopyWith<$Res> {
  factory $PreferencesModelCopyWith(
          PreferencesModel value, $Res Function(PreferencesModel) then) =
      _$PreferencesModelCopyWithImpl<$Res, PreferencesModel>;
  @useResult
  $Res call({ThemeMode themeMode, String language});
}

/// @nodoc
class _$PreferencesModelCopyWithImpl<$Res, $Val extends PreferencesModel>
    implements $PreferencesModelCopyWith<$Res> {
  _$PreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferencesModelImplCopyWith<$Res>
    implements $PreferencesModelCopyWith<$Res> {
  factory _$$PreferencesModelImplCopyWith(_$PreferencesModelImpl value,
          $Res Function(_$PreferencesModelImpl) then) =
      __$$PreferencesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, String language});
}

/// @nodoc
class __$$PreferencesModelImplCopyWithImpl<$Res>
    extends _$PreferencesModelCopyWithImpl<$Res, _$PreferencesModelImpl>
    implements _$$PreferencesModelImplCopyWith<$Res> {
  __$$PreferencesModelImplCopyWithImpl(_$PreferencesModelImpl _value,
      $Res Function(_$PreferencesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? language = null,
  }) {
    return _then(_$PreferencesModelImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesModelImpl implements _PreferencesModel {
  const _$PreferencesModelImpl(
      {required this.themeMode, required this.language});

  factory _$PreferencesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesModelImplFromJson(json);

  @override
  final ThemeMode themeMode;
  @override
  final String language;

  @override
  String toString() {
    return 'PreferencesModel(themeMode: $themeMode, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesModelImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesModelImplCopyWith<_$PreferencesModelImpl> get copyWith =>
      __$$PreferencesModelImplCopyWithImpl<_$PreferencesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesModelImplToJson(
      this,
    );
  }
}

abstract class _PreferencesModel implements PreferencesModel {
  const factory _PreferencesModel(
      {required final ThemeMode themeMode,
      required final String language}) = _$PreferencesModelImpl;

  factory _PreferencesModel.fromJson(Map<String, dynamic> json) =
      _$PreferencesModelImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$PreferencesModelImplCopyWith<_$PreferencesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
