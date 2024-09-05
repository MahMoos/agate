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
mixin _$Lecture {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get subjectId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<LectureFile>? get files => throw _privateConstructorUsedError;
  List<McqGame>? get mcqGames => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;
  Duration? get completedDuration => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get participants => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LectureCopyWith<Lecture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureCopyWith<$Res> {
  factory $LectureCopyWith(Lecture value, $Res Function(Lecture) then) =
      _$LectureCopyWithImpl<$Res, Lecture>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? subjectId,
      String? description,
      String? videoUrl,
      String? imageUrl,
      List<LectureFile>? files,
      List<McqGame>? mcqGames,
      Duration? duration,
      Duration? completedDuration,
      bool isCompleted,
      double price,
      String currency,
      double? discount,
      bool isSubscribed,
      double? rating,
      int? participants});
}

/// @nodoc
class _$LectureCopyWithImpl<$Res, $Val extends Lecture>
    implements $LectureCopyWith<$Res> {
  _$LectureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subjectId = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? imageUrl = freezed,
    Object? files = freezed,
    Object? mcqGames = freezed,
    Object? duration = freezed,
    Object? completedDuration = freezed,
    Object? isCompleted = null,
    Object? price = null,
    Object? currency = null,
    Object? discount = freezed,
    Object? isSubscribed = null,
    Object? rating = freezed,
    Object? participants = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<LectureFile>?,
      mcqGames: freezed == mcqGames
          ? _value.mcqGames
          : mcqGames // ignore: cast_nullable_to_non_nullable
              as List<McqGame>?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      completedDuration: freezed == completedDuration
          ? _value.completedDuration
          : completedDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LectureImplCopyWith<$Res> implements $LectureCopyWith<$Res> {
  factory _$$LectureImplCopyWith(
          _$LectureImpl value, $Res Function(_$LectureImpl) then) =
      __$$LectureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? subjectId,
      String? description,
      String? videoUrl,
      String? imageUrl,
      List<LectureFile>? files,
      List<McqGame>? mcqGames,
      Duration? duration,
      Duration? completedDuration,
      bool isCompleted,
      double price,
      String currency,
      double? discount,
      bool isSubscribed,
      double? rating,
      int? participants});
}

/// @nodoc
class __$$LectureImplCopyWithImpl<$Res>
    extends _$LectureCopyWithImpl<$Res, _$LectureImpl>
    implements _$$LectureImplCopyWith<$Res> {
  __$$LectureImplCopyWithImpl(
      _$LectureImpl _value, $Res Function(_$LectureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subjectId = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? imageUrl = freezed,
    Object? files = freezed,
    Object? mcqGames = freezed,
    Object? duration = freezed,
    Object? completedDuration = freezed,
    Object? isCompleted = null,
    Object? price = null,
    Object? currency = null,
    Object? discount = freezed,
    Object? isSubscribed = null,
    Object? rating = freezed,
    Object? participants = freezed,
  }) {
    return _then(_$LectureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<LectureFile>?,
      mcqGames: freezed == mcqGames
          ? _value._mcqGames
          : mcqGames // ignore: cast_nullable_to_non_nullable
              as List<McqGame>?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      completedDuration: freezed == completedDuration
          ? _value.completedDuration
          : completedDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LectureImpl implements _Lecture {
  const _$LectureImpl(
      {required this.id,
      required this.title,
      this.subjectId,
      this.description,
      this.videoUrl,
      this.imageUrl,
      final List<LectureFile>? files,
      final List<McqGame>? mcqGames,
      this.duration,
      this.completedDuration,
      this.isCompleted = false,
      this.price = 0,
      this.currency = 'IQD',
      this.discount,
      this.isSubscribed = false,
      this.rating,
      this.participants})
      : _files = files,
        _mcqGames = mcqGames;

  @override
  final String id;
  @override
  final String title;
  @override
  final String? subjectId;
  @override
  final String? description;
  @override
  final String? videoUrl;
  @override
  final String? imageUrl;
  final List<LectureFile>? _files;
  @override
  List<LectureFile>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<McqGame>? _mcqGames;
  @override
  List<McqGame>? get mcqGames {
    final value = _mcqGames;
    if (value == null) return null;
    if (_mcqGames is EqualUnmodifiableListView) return _mcqGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Duration? duration;
  @override
  final Duration? completedDuration;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final String currency;
  @override
  final double? discount;
  @override
  @JsonKey()
  final bool isSubscribed;
  @override
  final double? rating;
  @override
  final int? participants;

  @override
  String toString() {
    return 'Lecture(id: $id, title: $title, subjectId: $subjectId, description: $description, videoUrl: $videoUrl, imageUrl: $imageUrl, files: $files, mcqGames: $mcqGames, duration: $duration, completedDuration: $completedDuration, isCompleted: $isCompleted, price: $price, currency: $currency, discount: $discount, isSubscribed: $isSubscribed, rating: $rating, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._mcqGames, _mcqGames) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.completedDuration, completedDuration) ||
                other.completedDuration == completedDuration) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.participants, participants) ||
                other.participants == participants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      subjectId,
      description,
      videoUrl,
      imageUrl,
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_mcqGames),
      duration,
      completedDuration,
      isCompleted,
      price,
      currency,
      discount,
      isSubscribed,
      rating,
      participants);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureImplCopyWith<_$LectureImpl> get copyWith =>
      __$$LectureImplCopyWithImpl<_$LectureImpl>(this, _$identity);
}

abstract class _Lecture implements Lecture {
  const factory _Lecture(
      {required final String id,
      required final String title,
      final String? subjectId,
      final String? description,
      final String? videoUrl,
      final String? imageUrl,
      final List<LectureFile>? files,
      final List<McqGame>? mcqGames,
      final Duration? duration,
      final Duration? completedDuration,
      final bool isCompleted,
      final double price,
      final String currency,
      final double? discount,
      final bool isSubscribed,
      final double? rating,
      final int? participants}) = _$LectureImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get subjectId;
  @override
  String? get description;
  @override
  String? get videoUrl;
  @override
  String? get imageUrl;
  @override
  List<LectureFile>? get files;
  @override
  List<McqGame>? get mcqGames;
  @override
  Duration? get duration;
  @override
  Duration? get completedDuration;
  @override
  bool get isCompleted;
  @override
  double get price;
  @override
  String get currency;
  @override
  double? get discount;
  @override
  bool get isSubscribed;
  @override
  double? get rating;
  @override
  int? get participants;
  @override
  @JsonKey(ignore: true)
  _$$LectureImplCopyWith<_$LectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LectureFile {
  String get id => throw _privateConstructorUsedError;
  FileTypes get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LectureFileCopyWith<LectureFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureFileCopyWith<$Res> {
  factory $LectureFileCopyWith(
          LectureFile value, $Res Function(LectureFile) then) =
      _$LectureFileCopyWithImpl<$Res, LectureFile>;
  @useResult
  $Res call(
      {String id, FileTypes type, String url, String extension, String name});
}

/// @nodoc
class _$LectureFileCopyWithImpl<$Res, $Val extends LectureFile>
    implements $LectureFileCopyWith<$Res> {
  _$LectureFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
    Object? extension = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileTypes,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LectureFileImplCopyWith<$Res>
    implements $LectureFileCopyWith<$Res> {
  factory _$$LectureFileImplCopyWith(
          _$LectureFileImpl value, $Res Function(_$LectureFileImpl) then) =
      __$$LectureFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, FileTypes type, String url, String extension, String name});
}

/// @nodoc
class __$$LectureFileImplCopyWithImpl<$Res>
    extends _$LectureFileCopyWithImpl<$Res, _$LectureFileImpl>
    implements _$$LectureFileImplCopyWith<$Res> {
  __$$LectureFileImplCopyWithImpl(
      _$LectureFileImpl _value, $Res Function(_$LectureFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
    Object? extension = null,
    Object? name = null,
  }) {
    return _then(_$LectureFileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileTypes,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LectureFileImpl implements _LectureFile {
  const _$LectureFileImpl(
      {required this.id,
      required this.type,
      required this.url,
      required this.extension,
      required this.name});

  @override
  final String id;
  @override
  final FileTypes type;
  @override
  final String url;
  @override
  final String extension;
  @override
  final String name;

  @override
  String toString() {
    return 'LectureFile(id: $id, type: $type, url: $url, extension: $extension, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, url, extension, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureFileImplCopyWith<_$LectureFileImpl> get copyWith =>
      __$$LectureFileImplCopyWithImpl<_$LectureFileImpl>(this, _$identity);
}

abstract class _LectureFile implements LectureFile {
  const factory _LectureFile(
      {required final String id,
      required final FileTypes type,
      required final String url,
      required final String extension,
      required final String name}) = _$LectureFileImpl;

  @override
  String get id;
  @override
  FileTypes get type;
  @override
  String get url;
  @override
  String get extension;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$LectureFileImplCopyWith<_$LectureFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Review {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String createdBy,
      double rating,
      String? text});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? rating = null,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String createdBy,
      double rating,
      String? text});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? createdBy = null,
    Object? rating = null,
    Object? text = freezed,
  }) {
    return _then(_$ReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {required this.id,
      required this.createdAt,
      required this.createdBy,
      required this.rating,
      this.text});

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String createdBy;
  @override
  final double rating;
  @override
  final String? text;

  @override
  String toString() {
    return 'Review(id: $id, createdAt: $createdAt, createdBy: $createdBy, rating: $rating, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, createdBy, rating, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);
}

abstract class _Review implements Review {
  const factory _Review(
      {required final String id,
      required final DateTime createdAt,
      required final String createdBy,
      required final double rating,
      final String? text}) = _$ReviewImpl;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  String get createdBy;
  @override
  double get rating;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Section {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Teacher? get teacher => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Lecture>? get lectures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res, Section>;
  @useResult
  $Res call(
      {String id,
      String courseId,
      String name,
      Teacher? teacher,
      String? description,
      List<Lecture>? lectures});
}

/// @nodoc
class _$SectionCopyWithImpl<$Res, $Val extends Section>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? name = null,
    Object? teacher = freezed,
    Object? description = freezed,
    Object? lectures = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lectures: freezed == lectures
          ? _value.lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<Lecture>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionImplCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$SectionImplCopyWith(
          _$SectionImpl value, $Res Function(_$SectionImpl) then) =
      __$$SectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String courseId,
      String name,
      Teacher? teacher,
      String? description,
      List<Lecture>? lectures});
}

/// @nodoc
class __$$SectionImplCopyWithImpl<$Res>
    extends _$SectionCopyWithImpl<$Res, _$SectionImpl>
    implements _$$SectionImplCopyWith<$Res> {
  __$$SectionImplCopyWithImpl(
      _$SectionImpl _value, $Res Function(_$SectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? name = null,
    Object? teacher = freezed,
    Object? description = freezed,
    Object? lectures = freezed,
  }) {
    return _then(_$SectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lectures: freezed == lectures
          ? _value._lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<Lecture>?,
    ));
  }
}

/// @nodoc

class _$SectionImpl implements _Section {
  const _$SectionImpl(
      {required this.id,
      required this.courseId,
      required this.name,
      this.teacher,
      this.description,
      final List<Lecture>? lectures})
      : _lectures = lectures;

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String name;
  @override
  final Teacher? teacher;
  @override
  final String? description;
  final List<Lecture>? _lectures;
  @override
  List<Lecture>? get lectures {
    final value = _lectures;
    if (value == null) return null;
    if (_lectures is EqualUnmodifiableListView) return _lectures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Section(id: $id, courseId: $courseId, name: $name, teacher: $teacher, description: $description, lectures: $lectures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._lectures, _lectures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, name, teacher,
      description, const DeepCollectionEquality().hash(_lectures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      __$$SectionImplCopyWithImpl<_$SectionImpl>(this, _$identity);
}

abstract class _Section implements Section {
  const factory _Section(
      {required final String id,
      required final String courseId,
      required final String name,
      final Teacher? teacher,
      final String? description,
      final List<Lecture>? lectures}) = _$SectionImpl;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get name;
  @override
  Teacher? get teacher;
  @override
  String? get description;
  @override
  List<Lecture>? get lectures;
  @override
  @JsonKey(ignore: true)
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
