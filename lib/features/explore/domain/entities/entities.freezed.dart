// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Home {
  List<Slide>? get slides => throw _privateConstructorUsedError;
  List<MyCourse>? get myCourses => throw _privateConstructorUsedError;
  List<Course>? get specialCourses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res, Home>;
  @useResult
  $Res call(
      {List<Slide>? slides,
      List<MyCourse>? myCourses,
      List<Course>? specialCourses});
}

/// @nodoc
class _$HomeCopyWithImpl<$Res, $Val extends Home>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

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
              as List<Slide>?,
      myCourses: freezed == myCourses
          ? _value.myCourses
          : myCourses // ignore: cast_nullable_to_non_nullable
              as List<MyCourse>?,
      specialCourses: freezed == specialCourses
          ? _value.specialCourses
          : specialCourses // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeImplCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$HomeImplCopyWith(
          _$HomeImpl value, $Res Function(_$HomeImpl) then) =
      __$$HomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Slide>? slides,
      List<MyCourse>? myCourses,
      List<Course>? specialCourses});
}

/// @nodoc
class __$$HomeImplCopyWithImpl<$Res>
    extends _$HomeCopyWithImpl<$Res, _$HomeImpl>
    implements _$$HomeImplCopyWith<$Res> {
  __$$HomeImplCopyWithImpl(_$HomeImpl _value, $Res Function(_$HomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slides = freezed,
    Object? myCourses = freezed,
    Object? specialCourses = freezed,
  }) {
    return _then(_$HomeImpl(
      slides: freezed == slides
          ? _value._slides
          : slides // ignore: cast_nullable_to_non_nullable
              as List<Slide>?,
      myCourses: freezed == myCourses
          ? _value._myCourses
          : myCourses // ignore: cast_nullable_to_non_nullable
              as List<MyCourse>?,
      specialCourses: freezed == specialCourses
          ? _value._specialCourses
          : specialCourses // ignore: cast_nullable_to_non_nullable
              as List<Course>?,
    ));
  }
}

/// @nodoc

class _$HomeImpl implements _Home {
  const _$HomeImpl(
      {final List<Slide>? slides,
      final List<MyCourse>? myCourses,
      final List<Course>? specialCourses})
      : _slides = slides,
        _myCourses = myCourses,
        _specialCourses = specialCourses;

  final List<Slide>? _slides;
  @override
  List<Slide>? get slides {
    final value = _slides;
    if (value == null) return null;
    if (_slides is EqualUnmodifiableListView) return _slides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MyCourse>? _myCourses;
  @override
  List<MyCourse>? get myCourses {
    final value = _myCourses;
    if (value == null) return null;
    if (_myCourses is EqualUnmodifiableListView) return _myCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Course>? _specialCourses;
  @override
  List<Course>? get specialCourses {
    final value = _specialCourses;
    if (value == null) return null;
    if (_specialCourses is EqualUnmodifiableListView) return _specialCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Home(slides: $slides, myCourses: $myCourses, specialCourses: $specialCourses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeImpl &&
            const DeepCollectionEquality().equals(other._slides, _slides) &&
            const DeepCollectionEquality()
                .equals(other._myCourses, _myCourses) &&
            const DeepCollectionEquality()
                .equals(other._specialCourses, _specialCourses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_slides),
      const DeepCollectionEquality().hash(_myCourses),
      const DeepCollectionEquality().hash(_specialCourses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      __$$HomeImplCopyWithImpl<_$HomeImpl>(this, _$identity);
}

abstract class _Home implements Home {
  const factory _Home(
      {final List<Slide>? slides,
      final List<MyCourse>? myCourses,
      final List<Course>? specialCourses}) = _$HomeImpl;

  @override
  List<Slide>? get slides;
  @override
  List<MyCourse>? get myCourses;
  @override
  List<Course>? get specialCourses;
  @override
  @JsonKey(ignore: true)
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Slide {
  String get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get actionUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlideCopyWith<Slide> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideCopyWith<$Res> {
  factory $SlideCopyWith(Slide value, $Res Function(Slide) then) =
      _$SlideCopyWithImpl<$Res, Slide>;
  @useResult
  $Res call({String id, String? imageUrl, String? title, String? actionUrl});
}

/// @nodoc
class _$SlideCopyWithImpl<$Res, $Val extends Slide>
    implements $SlideCopyWith<$Res> {
  _$SlideCopyWithImpl(this._value, this._then);

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
abstract class _$$SlideImplCopyWith<$Res> implements $SlideCopyWith<$Res> {
  factory _$$SlideImplCopyWith(
          _$SlideImpl value, $Res Function(_$SlideImpl) then) =
      __$$SlideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? imageUrl, String? title, String? actionUrl});
}

/// @nodoc
class __$$SlideImplCopyWithImpl<$Res>
    extends _$SlideCopyWithImpl<$Res, _$SlideImpl>
    implements _$$SlideImplCopyWith<$Res> {
  __$$SlideImplCopyWithImpl(
      _$SlideImpl _value, $Res Function(_$SlideImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? actionUrl = freezed,
  }) {
    return _then(_$SlideImpl(
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

class _$SlideImpl implements _Slide {
  const _$SlideImpl(
      {required this.id, this.imageUrl, this.title, this.actionUrl});

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
    return 'Slide(id: $id, imageUrl: $imageUrl, title: $title, actionUrl: $actionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlideImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.actionUrl, actionUrl) ||
                other.actionUrl == actionUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, title, actionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlideImplCopyWith<_$SlideImpl> get copyWith =>
      __$$SlideImplCopyWithImpl<_$SlideImpl>(this, _$identity);
}

abstract class _Slide implements Slide {
  const factory _Slide(
      {required final String id,
      final String? imageUrl,
      final String? title,
      final String? actionUrl}) = _$SlideImpl;

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
  _$$SlideImplCopyWith<_$SlideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
