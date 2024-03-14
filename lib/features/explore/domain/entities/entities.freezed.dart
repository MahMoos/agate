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
mixin _$Book {
  String get id => throw _privateConstructorUsedError;

  String? get imageUrl => throw _privateConstructorUsedError;

  String? get title => throw _privateConstructorUsedError;

  String? get description => throw _privateConstructorUsedError;

  String? get author => throw _privateConstructorUsedError;

  int? get numberOfPages => throw _privateConstructorUsedError;

  DateTime? get publishedAt => throw _privateConstructorUsedError;

  String? get url => throw _privateConstructorUsedError;

  String? get extension => throw _privateConstructorUsedError;

  double? get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;

  @useResult
  $Res call(
      {String id,
      String? imageUrl,
      String? title,
      String? description,
      String? author,
      int? numberOfPages,
      DateTime? publishedAt,
      String? url,
      String? extension,
      double? size});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? author = freezed,
    Object? numberOfPages = freezed,
    Object? publishedAt = freezed,
    Object? url = freezed,
    Object? extension = freezed,
    Object? size = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfPages: freezed == numberOfPages
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String id,
      String? imageUrl,
      String? title,
      String? description,
      String? author,
      int? numberOfPages,
      DateTime? publishedAt,
      String? url,
      String? extension,
      double? size});
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? numberOfPages = freezed,
    Object? publishedAt = freezed,
    Object? url = freezed,
    Object? extension = freezed,
    Object? size = freezed,
  }) {
    return _then(_$BookImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfPages: freezed == numberOfPages
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$BookImpl implements _Book {
  const _$BookImpl(
      {required this.id,
      this.imageUrl,
      this.title,
      this.description,
      this.author,
      this.numberOfPages,
      this.publishedAt,
      this.url,
      this.extension,
      this.size});

  @override
  final String id;
  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? author;
  @override
  final int? numberOfPages;
  @override
  final DateTime? publishedAt;
  @override
  final String? url;
  @override
  final String? extension;
  @override
  final double? size;

  @override
  String toString() {
    return 'Book(id: $id, imageUrl: $imageUrl, title: $title, description: $description, author: $author, numberOfPages: $numberOfPages, publishedAt: $publishedAt, url: $url, extension: $extension, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.numberOfPages, numberOfPages) ||
                other.numberOfPages == numberOfPages) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, title, description,
      author, numberOfPages, publishedAt, url, extension, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);
}

abstract class _Book implements Book {
  const factory _Book(
      {required final String id,
      final String? imageUrl,
      final String? title,
      final String? description,
      final String? author,
      final int? numberOfPages,
      final DateTime? publishedAt,
      final String? url,
      final String? extension,
      final double? size}) = _$BookImpl;

  @override
  String get id;

  @override
  String? get imageUrl;

  @override
  String? get title;

  @override
  String? get description;

  @override
  String? get author;

  @override
  int? get numberOfPages;

  @override
  DateTime? get publishedAt;

  @override
  String? get url;

  @override
  String? get extension;

  @override
  double? get size;

  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
mixin _$McqGame {
  String get id => throw _privateConstructorUsedError;

  String get question => throw _privateConstructorUsedError;

  int get correctAnswerId => throw _privateConstructorUsedError;

  List<McqAnswer> get answerOptions => throw _privateConstructorUsedError;

  String? get subjectId => throw _privateConstructorUsedError;

  int? get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $McqGameCopyWith<McqGame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McqGameCopyWith<$Res> {
  factory $McqGameCopyWith(McqGame value, $Res Function(McqGame) then) =
      _$McqGameCopyWithImpl<$Res, McqGame>;

  @useResult
  $Res call(
      {String id,
      String question,
      int correctAnswerId,
      List<McqAnswer> answerOptions,
      String? subjectId,
      int? rate});
}

/// @nodoc
class _$McqGameCopyWithImpl<$Res, $Val extends McqGame>
    implements $McqGameCopyWith<$Res> {
  _$McqGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? correctAnswerId = null,
    Object? answerOptions = null,
    Object? subjectId = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswerId: null == correctAnswerId
          ? _value.correctAnswerId
          : correctAnswerId // ignore: cast_nullable_to_non_nullable
              as int,
      answerOptions: null == answerOptions
          ? _value.answerOptions
          : answerOptions // ignore: cast_nullable_to_non_nullable
              as List<McqAnswer>,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$McqGameImplCopyWith<$Res> implements $McqGameCopyWith<$Res> {
  factory _$$McqGameImplCopyWith(
          _$McqGameImpl value, $Res Function(_$McqGameImpl) then) =
      __$$McqGameImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String id,
      String question,
      int correctAnswerId,
      List<McqAnswer> answerOptions,
      String? subjectId,
      int? rate});
}

/// @nodoc
class __$$McqGameImplCopyWithImpl<$Res>
    extends _$McqGameCopyWithImpl<$Res, _$McqGameImpl>
    implements _$$McqGameImplCopyWith<$Res> {
  __$$McqGameImplCopyWithImpl(
      _$McqGameImpl _value, $Res Function(_$McqGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? correctAnswerId = null,
    Object? answerOptions = null,
    Object? subjectId = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$McqGameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswerId: null == correctAnswerId
          ? _value.correctAnswerId
          : correctAnswerId // ignore: cast_nullable_to_non_nullable
              as int,
      answerOptions: null == answerOptions
          ? _value._answerOptions
          : answerOptions // ignore: cast_nullable_to_non_nullable
              as List<McqAnswer>,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$McqGameImpl implements _McqGame {
  const _$McqGameImpl(
      {required this.id,
      required this.question,
      required this.correctAnswerId,
      required final List<McqAnswer> answerOptions,
      this.subjectId,
      this.rate})
      : _answerOptions = answerOptions;

  @override
  final String id;
  @override
  final String question;
  @override
  final int correctAnswerId;
  final List<McqAnswer> _answerOptions;

  @override
  List<McqAnswer> get answerOptions {
    if (_answerOptions is EqualUnmodifiableListView) return _answerOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerOptions);
  }

  @override
  final String? subjectId;
  @override
  final int? rate;

  @override
  String toString() {
    return 'McqGame(id: $id, question: $question, correctAnswerId: $correctAnswerId, answerOptions: $answerOptions, subjectId: $subjectId, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$McqGameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.correctAnswerId, correctAnswerId) ||
                other.correctAnswerId == correctAnswerId) &&
            const DeepCollectionEquality()
                .equals(other._answerOptions, _answerOptions) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, question, correctAnswerId,
      const DeepCollectionEquality().hash(_answerOptions), subjectId, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$McqGameImplCopyWith<_$McqGameImpl> get copyWith =>
      __$$McqGameImplCopyWithImpl<_$McqGameImpl>(this, _$identity);
}

abstract class _McqGame implements McqGame {
  const factory _McqGame(
      {required final String id,
      required final String question,
      required final int correctAnswerId,
      required final List<McqAnswer> answerOptions,
      final String? subjectId,
      final int? rate}) = _$McqGameImpl;

  @override
  String get id;

  @override
  String get question;

  @override
  int get correctAnswerId;

  @override
  List<McqAnswer> get answerOptions;

  @override
  String? get subjectId;

  @override
  int? get rate;

  @override
  @JsonKey(ignore: true)
  _$$McqGameImplCopyWith<_$McqGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$McqAnswer {
  int get id => throw _privateConstructorUsedError;

  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $McqAnswerCopyWith<McqAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McqAnswerCopyWith<$Res> {
  factory $McqAnswerCopyWith(McqAnswer value, $Res Function(McqAnswer) then) =
      _$McqAnswerCopyWithImpl<$Res, McqAnswer>;

  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class _$McqAnswerCopyWithImpl<$Res, $Val extends McqAnswer>
    implements $McqAnswerCopyWith<$Res> {
  _$McqAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$McqAnswerImplCopyWith<$Res>
    implements $McqAnswerCopyWith<$Res> {
  factory _$$McqAnswerImplCopyWith(
          _$McqAnswerImpl value, $Res Function(_$McqAnswerImpl) then) =
      __$$McqAnswerImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class __$$McqAnswerImplCopyWithImpl<$Res>
    extends _$McqAnswerCopyWithImpl<$Res, _$McqAnswerImpl>
    implements _$$McqAnswerImplCopyWith<$Res> {
  __$$McqAnswerImplCopyWithImpl(
      _$McqAnswerImpl _value, $Res Function(_$McqAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$McqAnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$McqAnswerImpl implements _McqAnswer {
  const _$McqAnswerImpl({required this.id, required this.text});

  @override
  final int id;
  @override
  final String text;

  @override
  String toString() {
    return 'McqAnswer(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$McqAnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$McqAnswerImplCopyWith<_$McqAnswerImpl> get copyWith =>
      __$$McqAnswerImplCopyWithImpl<_$McqAnswerImpl>(this, _$identity);
}

abstract class _McqAnswer implements McqAnswer {
  const factory _McqAnswer(
      {required final int id, required final String text}) = _$McqAnswerImpl;

  @override
  int get id;

  @override
  String get text;

  @override
  @JsonKey(ignore: true)
  _$$McqAnswerImplCopyWith<_$McqAnswerImpl> get copyWith =>
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
