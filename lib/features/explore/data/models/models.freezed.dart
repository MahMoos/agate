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

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  String get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  int? get numberOfPages => throw _privateConstructorUsedError;
  DateTime? get publication => throw _privateConstructorUsedError;
  List<FileModel>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call(
      {String id,
      String? imageUrl,
      String? title,
      String? description,
      String? author,
      int? numberOfPages,
      DateTime? publication,
      List<FileModel>? files});
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

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
    Object? publication = freezed,
    Object? files = freezed,
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
      publication: freezed == publication
          ? _value.publication
          : publication // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookModelImplCopyWith<$Res>
    implements $BookModelCopyWith<$Res> {
  factory _$$BookModelImplCopyWith(
          _$BookModelImpl value, $Res Function(_$BookModelImpl) then) =
      __$$BookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? imageUrl,
      String? title,
      String? description,
      String? author,
      int? numberOfPages,
      DateTime? publication,
      List<FileModel>? files});
}

/// @nodoc
class __$$BookModelImplCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$BookModelImpl>
    implements _$$BookModelImplCopyWith<$Res> {
  __$$BookModelImplCopyWithImpl(
      _$BookModelImpl _value, $Res Function(_$BookModelImpl) _then)
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
    Object? publication = freezed,
    Object? files = freezed,
  }) {
    return _then(_$BookModelImpl(
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
      publication: freezed == publication
          ? _value.publication
          : publication // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookModelImpl implements _BookModel {
  const _$BookModelImpl(
      {required this.id,
      this.imageUrl,
      this.title,
      this.description,
      this.author,
      this.numberOfPages,
      this.publication,
      final List<FileModel>? files})
      : _files = files;

  factory _$BookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookModelImplFromJson(json);

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
  final DateTime? publication;
  final List<FileModel>? _files;
  @override
  List<FileModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookModel(id: $id, imageUrl: $imageUrl, title: $title, description: $description, author: $author, numberOfPages: $numberOfPages, publication: $publication, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.numberOfPages, numberOfPages) ||
                other.numberOfPages == numberOfPages) &&
            (identical(other.publication, publication) ||
                other.publication == publication) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      imageUrl,
      title,
      description,
      author,
      numberOfPages,
      publication,
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      __$$BookModelImplCopyWithImpl<_$BookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookModelImplToJson(
      this,
    );
  }
}

abstract class _BookModel implements BookModel {
  const factory _BookModel(
      {required final String id,
      final String? imageUrl,
      final String? title,
      final String? description,
      final String? author,
      final int? numberOfPages,
      final DateTime? publication,
      final List<FileModel>? files}) = _$BookModelImpl;

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$BookModelImpl.fromJson;

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
  DateTime? get publication;
  @override
  List<FileModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

McqGameModel _$McqGameModelFromJson(Map<String, dynamic> json) {
  return _McqGameModel.fromJson(json);
}

/// @nodoc
mixin _$McqGameModel {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  int get correctAnswerId => throw _privateConstructorUsedError;
  List<McqAnswerModel> get answerOptions => throw _privateConstructorUsedError;
  String? get subjectId => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $McqGameModelCopyWith<McqGameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McqGameModelCopyWith<$Res> {
  factory $McqGameModelCopyWith(
          McqGameModel value, $Res Function(McqGameModel) then) =
      _$McqGameModelCopyWithImpl<$Res, McqGameModel>;
  @useResult
  $Res call(
      {String id,
      String question,
      int correctAnswerId,
      List<McqAnswerModel> answerOptions,
      String? subjectId,
      int? rate});
}

/// @nodoc
class _$McqGameModelCopyWithImpl<$Res, $Val extends McqGameModel>
    implements $McqGameModelCopyWith<$Res> {
  _$McqGameModelCopyWithImpl(this._value, this._then);

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
              as List<McqAnswerModel>,
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
abstract class _$$McqGameModelImplCopyWith<$Res>
    implements $McqGameModelCopyWith<$Res> {
  factory _$$McqGameModelImplCopyWith(
          _$McqGameModelImpl value, $Res Function(_$McqGameModelImpl) then) =
      __$$McqGameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      int correctAnswerId,
      List<McqAnswerModel> answerOptions,
      String? subjectId,
      int? rate});
}

/// @nodoc
class __$$McqGameModelImplCopyWithImpl<$Res>
    extends _$McqGameModelCopyWithImpl<$Res, _$McqGameModelImpl>
    implements _$$McqGameModelImplCopyWith<$Res> {
  __$$McqGameModelImplCopyWithImpl(
      _$McqGameModelImpl _value, $Res Function(_$McqGameModelImpl) _then)
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
    return _then(_$McqGameModelImpl(
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
              as List<McqAnswerModel>,
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
@JsonSerializable()
class _$McqGameModelImpl implements _McqGameModel {
  const _$McqGameModelImpl(
      {required this.id,
      required this.question,
      required this.correctAnswerId,
      required final List<McqAnswerModel> answerOptions,
      this.subjectId,
      this.rate})
      : _answerOptions = answerOptions;

  factory _$McqGameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$McqGameModelImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  final int correctAnswerId;
  final List<McqAnswerModel> _answerOptions;
  @override
  List<McqAnswerModel> get answerOptions {
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
    return 'McqGameModel(id: $id, question: $question, correctAnswerId: $correctAnswerId, answerOptions: $answerOptions, subjectId: $subjectId, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$McqGameModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question, correctAnswerId,
      const DeepCollectionEquality().hash(_answerOptions), subjectId, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$McqGameModelImplCopyWith<_$McqGameModelImpl> get copyWith =>
      __$$McqGameModelImplCopyWithImpl<_$McqGameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$McqGameModelImplToJson(
      this,
    );
  }
}

abstract class _McqGameModel implements McqGameModel {
  const factory _McqGameModel(
      {required final String id,
      required final String question,
      required final int correctAnswerId,
      required final List<McqAnswerModel> answerOptions,
      final String? subjectId,
      final int? rate}) = _$McqGameModelImpl;

  factory _McqGameModel.fromJson(Map<String, dynamic> json) =
      _$McqGameModelImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  int get correctAnswerId;
  @override
  List<McqAnswerModel> get answerOptions;
  @override
  String? get subjectId;
  @override
  int? get rate;
  @override
  @JsonKey(ignore: true)
  _$$McqGameModelImplCopyWith<_$McqGameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

McqAnswerModel _$McqAnswerModelFromJson(Map<String, dynamic> json) {
  return _McqAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$McqAnswerModel {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $McqAnswerModelCopyWith<McqAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McqAnswerModelCopyWith<$Res> {
  factory $McqAnswerModelCopyWith(
          McqAnswerModel value, $Res Function(McqAnswerModel) then) =
      _$McqAnswerModelCopyWithImpl<$Res, McqAnswerModel>;
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class _$McqAnswerModelCopyWithImpl<$Res, $Val extends McqAnswerModel>
    implements $McqAnswerModelCopyWith<$Res> {
  _$McqAnswerModelCopyWithImpl(this._value, this._then);

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
abstract class _$$McqAnswerModelImplCopyWith<$Res>
    implements $McqAnswerModelCopyWith<$Res> {
  factory _$$McqAnswerModelImplCopyWith(_$McqAnswerModelImpl value,
          $Res Function(_$McqAnswerModelImpl) then) =
      __$$McqAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class __$$McqAnswerModelImplCopyWithImpl<$Res>
    extends _$McqAnswerModelCopyWithImpl<$Res, _$McqAnswerModelImpl>
    implements _$$McqAnswerModelImplCopyWith<$Res> {
  __$$McqAnswerModelImplCopyWithImpl(
      _$McqAnswerModelImpl _value, $Res Function(_$McqAnswerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$McqAnswerModelImpl(
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
@JsonSerializable()
class _$McqAnswerModelImpl implements _McqAnswerModel {
  const _$McqAnswerModelImpl({required this.id, required this.text});

  factory _$McqAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$McqAnswerModelImplFromJson(json);

  @override
  final int id;
  @override
  final String text;

  @override
  String toString() {
    return 'McqAnswerModel(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$McqAnswerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$McqAnswerModelImplCopyWith<_$McqAnswerModelImpl> get copyWith =>
      __$$McqAnswerModelImplCopyWithImpl<_$McqAnswerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$McqAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _McqAnswerModel implements McqAnswerModel {
  const factory _McqAnswerModel(
      {required final int id,
      required final String text}) = _$McqAnswerModelImpl;

  factory _McqAnswerModel.fromJson(Map<String, dynamic> json) =
      _$McqAnswerModelImpl.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$McqAnswerModelImplCopyWith<_$McqAnswerModelImpl> get copyWith =>
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
