// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updater_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdaterState {
  UpdaterStatus get status => throw _privateConstructorUsedError;
  bool get updateAvailable => throw _privateConstructorUsedError;
  bool get isNewPatchReadyToInstall => throw _privateConstructorUsedError;
  String get currentVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdaterStateCopyWith<UpdaterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdaterStateCopyWith<$Res> {
  factory $UpdaterStateCopyWith(
          UpdaterState value, $Res Function(UpdaterState) then) =
      _$UpdaterStateCopyWithImpl<$Res, UpdaterState>;
  @useResult
  $Res call(
      {UpdaterStatus status,
      bool updateAvailable,
      bool isNewPatchReadyToInstall,
      String currentVersion});
}

/// @nodoc
class _$UpdaterStateCopyWithImpl<$Res, $Val extends UpdaterState>
    implements $UpdaterStateCopyWith<$Res> {
  _$UpdaterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updateAvailable = null,
    Object? isNewPatchReadyToInstall = null,
    Object? currentVersion = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpdaterStatus,
      updateAvailable: null == updateAvailable
          ? _value.updateAvailable
          : updateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewPatchReadyToInstall: null == isNewPatchReadyToInstall
          ? _value.isNewPatchReadyToInstall
          : isNewPatchReadyToInstall // ignore: cast_nullable_to_non_nullable
              as bool,
      currentVersion: null == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdaterStateImplCopyWith<$Res>
    implements $UpdaterStateCopyWith<$Res> {
  factory _$$UpdaterStateImplCopyWith(
          _$UpdaterStateImpl value, $Res Function(_$UpdaterStateImpl) then) =
      __$$UpdaterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UpdaterStatus status,
      bool updateAvailable,
      bool isNewPatchReadyToInstall,
      String currentVersion});
}

/// @nodoc
class __$$UpdaterStateImplCopyWithImpl<$Res>
    extends _$UpdaterStateCopyWithImpl<$Res, _$UpdaterStateImpl>
    implements _$$UpdaterStateImplCopyWith<$Res> {
  __$$UpdaterStateImplCopyWithImpl(
      _$UpdaterStateImpl _value, $Res Function(_$UpdaterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updateAvailable = null,
    Object? isNewPatchReadyToInstall = null,
    Object? currentVersion = null,
  }) {
    return _then(_$UpdaterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpdaterStatus,
      updateAvailable: null == updateAvailable
          ? _value.updateAvailable
          : updateAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewPatchReadyToInstall: null == isNewPatchReadyToInstall
          ? _value.isNewPatchReadyToInstall
          : isNewPatchReadyToInstall // ignore: cast_nullable_to_non_nullable
              as bool,
      currentVersion: null == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdaterStateImpl implements _UpdaterState {
  const _$UpdaterStateImpl(
      {this.status = UpdaterStatus.updateCheckInProgress,
      this.updateAvailable = false,
      this.isNewPatchReadyToInstall = false,
      this.currentVersion = ''});

  @override
  @JsonKey()
  final UpdaterStatus status;
  @override
  @JsonKey()
  final bool updateAvailable;
  @override
  @JsonKey()
  final bool isNewPatchReadyToInstall;
  @override
  @JsonKey()
  final String currentVersion;

  @override
  String toString() {
    return 'UpdaterState(status: $status, updateAvailable: $updateAvailable, isNewPatchReadyToInstall: $isNewPatchReadyToInstall, currentVersion: $currentVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdaterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updateAvailable, updateAvailable) ||
                other.updateAvailable == updateAvailable) &&
            (identical(
                    other.isNewPatchReadyToInstall, isNewPatchReadyToInstall) ||
                other.isNewPatchReadyToInstall == isNewPatchReadyToInstall) &&
            (identical(other.currentVersion, currentVersion) ||
                other.currentVersion == currentVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, updateAvailable,
      isNewPatchReadyToInstall, currentVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdaterStateImplCopyWith<_$UpdaterStateImpl> get copyWith =>
      __$$UpdaterStateImplCopyWithImpl<_$UpdaterStateImpl>(this, _$identity);
}

abstract class _UpdaterState implements UpdaterState {
  const factory _UpdaterState(
      {final UpdaterStatus status,
      final bool updateAvailable,
      final bool isNewPatchReadyToInstall,
      final String currentVersion}) = _$UpdaterStateImpl;

  @override
  UpdaterStatus get status;
  @override
  bool get updateAvailable;
  @override
  bool get isNewPatchReadyToInstall;
  @override
  String get currentVersion;
  @override
  @JsonKey(ignore: true)
  _$$UpdaterStateImplCopyWith<_$UpdaterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
