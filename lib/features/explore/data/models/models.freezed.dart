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

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  List<SlideModel>? get slides => throw _privateConstructorUsedError;
  List<MyCourseModel>? get myCourses => throw _privateConstructorUsedError;
  List<CourseModel>? get specialCourses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {List<SlideModel>? slides,
      List<MyCourseModel>? myCourses,
      List<CourseModel>? specialCourses});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slides = freezed,
    Object? myCourses = freezed,
    Object? specialCourses = freezed,
  }) {
    return _then(_value.copyWith(
      slides: freezed == slides
          ? _value.slides
          : slides // ignore: cast_nullable_to_non_nullable
              as List<SlideModel>?,
      myCourses: freezed == myCourses
          ? _value.myCourses
          : myCourses // ignore: cast_nullable_to_non_nullable
              as List<MyCourseModel>?,
      specialCourses: freezed == specialCourses
          ? _value.specialCourses
          : specialCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SlideModel>? slides,
      List<MyCourseModel>? myCourses,
      List<CourseModel>? specialCourses});
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slides = freezed,
    Object? myCourses = freezed,
    Object? specialCourses = freezed,
  }) {
    return _then(_$HomeModelImpl(
      slides: freezed == slides
          ? _value._slides
          : slides // ignore: cast_nullable_to_non_nullable
              as List<SlideModel>?,
      myCourses: freezed == myCourses
          ? _value._myCourses
          : myCourses // ignore: cast_nullable_to_non_nullable
              as List<MyCourseModel>?,
      specialCourses: freezed == specialCourses
          ? _value._specialCourses
          : specialCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {final List<SlideModel>? slides,
      final List<MyCourseModel>? myCourses,
      final List<CourseModel>? specialCourses})
      : _slides = slides,
        _myCourses = myCourses,
        _specialCourses = specialCourses;

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  final List<SlideModel>? _slides;
  @override
  List<SlideModel>? get slides {
    final value = _slides;
    if (value == null) return null;
    if (_slides is EqualUnmodifiableListView) return _slides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MyCourseModel>? _myCourses;
  @override
  List<MyCourseModel>? get myCourses {
    final value = _myCourses;
    if (value == null) return null;
    if (_myCourses is EqualUnmodifiableListView) return _myCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CourseModel>? _specialCourses;
  @override
  List<CourseModel>? get specialCourses {
    final value = _specialCourses;
    if (value == null) return null;
    if (_specialCourses is EqualUnmodifiableListView) return _specialCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeModel(slides: $slides, myCourses: $myCourses, specialCourses: $specialCourses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            const DeepCollectionEquality().equals(other._slides, _slides) &&
            const DeepCollectionEquality()
                .equals(other._myCourses, _myCourses) &&
            const DeepCollectionEquality()
                .equals(other._specialCourses, _specialCourses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_slides),
      const DeepCollectionEquality().hash(_myCourses),
      const DeepCollectionEquality().hash(_specialCourses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {final List<SlideModel>? slides,
      final List<MyCourseModel>? myCourses,
      final List<CourseModel>? specialCourses}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  List<SlideModel>? get slides;
  @override
  List<MyCourseModel>? get myCourses;
  @override
  List<CourseModel>? get specialCourses;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SlideModel _$SlideModelFromJson(Map<String, dynamic> json) {
  return _SlideModel.fromJson(json);
}

/// @nodoc
mixin _$SlideModel {
  String get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get actionUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideModelCopyWith<SlideModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideModelCopyWith<$Res> {
  factory $SlideModelCopyWith(
          SlideModel value, $Res Function(SlideModel) then) =
      _$SlideModelCopyWithImpl<$Res, SlideModel>;
  @useResult
  $Res call({String id, String? imageUrl, String? title, String? actionUrl});
}

/// @nodoc
class _$SlideModelCopyWithImpl<$Res, $Val extends SlideModel>
    implements $SlideModelCopyWith<$Res> {
  _$SlideModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? actionUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      actionUrl: freezed == actionUrl
          ? _value.actionUrl
          : actionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlideModelImplCopyWith<$Res>
    implements $SlideModelCopyWith<$Res> {
  factory _$$SlideModelImplCopyWith(
          _$SlideModelImpl value, $Res Function(_$SlideModelImpl) then) =
      __$$SlideModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? imageUrl, String? title, String? actionUrl});
}

/// @nodoc
class __$$SlideModelImplCopyWithImpl<$Res>
    extends _$SlideModelCopyWithImpl<$Res, _$SlideModelImpl>
    implements _$$SlideModelImplCopyWith<$Res> {
  __$$SlideModelImplCopyWithImpl(
      _$SlideModelImpl _value, $Res Function(_$SlideModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? actionUrl = freezed,
  }) {
    return _then(_$SlideModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      actionUrl: freezed == actionUrl
          ? _value.actionUrl
          : actionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlideModelImpl implements _SlideModel {
  const _$SlideModelImpl(
      {required this.id, this.imageUrl, this.title, this.actionUrl});

  factory _$SlideModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlideModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final String? actionUrl;

  @override
  String toString() {
    return 'SlideModel(id: $id, imageUrl: $imageUrl, title: $title, actionUrl: $actionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlideModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.actionUrl, actionUrl) ||
                other.actionUrl == actionUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, title, actionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlideModelImplCopyWith<_$SlideModelImpl> get copyWith =>
      __$$SlideModelImplCopyWithImpl<_$SlideModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlideModelImplToJson(
      this,
    );
  }
}

abstract class _SlideModel implements SlideModel {
  const factory _SlideModel(
      {required final String id,
      final String? imageUrl,
      final String? title,
      final String? actionUrl}) = _$SlideModelImpl;

  factory _SlideModel.fromJson(Map<String, dynamic> json) =
      _$SlideModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get imageUrl;
  @override
  String? get title;
  @override
  String? get actionUrl;
  @override
  @JsonKey(ignore: true)
  _$$SlideModelImplCopyWith<_$SlideModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
