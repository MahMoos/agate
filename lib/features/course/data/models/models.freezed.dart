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

CourseDetailsModel _$CourseDetailsModelFromJson(Map<String, dynamic> json) {
  return _CourseDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$CourseDetailsModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<TeacherModel>? get teachers => throw _privateConstructorUsedError;
  int get totalLectures => throw _privateConstructorUsedError;
  int get completedLectures => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  int get participants => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  List<SectionModel>? get sections => throw _privateConstructorUsedError;
  String? get currentLectureId => throw _privateConstructorUsedError;
  String? get currentSectionId => throw _privateConstructorUsedError;
  String? get promoUrl => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseDetailsModelCopyWith<CourseDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsModelCopyWith<$Res> {
  factory $CourseDetailsModelCopyWith(
          CourseDetailsModel value, $Res Function(CourseDetailsModel) then) =
      _$CourseDetailsModelCopyWithImpl<$Res, CourseDetailsModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      List<TeacherModel>? teachers,
      int totalLectures,
      int completedLectures,
      double price,
      String currency,
      double? discount,
      int participants,
      double? rating,
      List<SectionModel>? sections,
      String? currentLectureId,
      String? currentSectionId,
      String? promoUrl,
      String? imageUrl,
      bool isSubscribed});
}

/// @nodoc
class _$CourseDetailsModelCopyWithImpl<$Res, $Val extends CourseDetailsModel>
    implements $CourseDetailsModelCopyWith<$Res> {
  _$CourseDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? teachers = freezed,
    Object? totalLectures = null,
    Object? completedLectures = null,
    Object? price = null,
    Object? currency = null,
    Object? discount = freezed,
    Object? participants = null,
    Object? rating = freezed,
    Object? sections = freezed,
    Object? currentLectureId = freezed,
    Object? currentSectionId = freezed,
    Object? promoUrl = freezed,
    Object? imageUrl = freezed,
    Object? isSubscribed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      teachers: freezed == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>?,
      totalLectures: null == totalLectures
          ? _value.totalLectures
          : totalLectures // ignore: cast_nullable_to_non_nullable
              as int,
      completedLectures: null == completedLectures
          ? _value.completedLectures
          : completedLectures // ignore: cast_nullable_to_non_nullable
              as int,
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
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>?,
      currentLectureId: freezed == currentLectureId
          ? _value.currentLectureId
          : currentLectureId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentSectionId: freezed == currentSectionId
          ? _value.currentSectionId
          : currentSectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      promoUrl: freezed == promoUrl
          ? _value.promoUrl
          : promoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseDetailsModelImplCopyWith<$Res>
    implements $CourseDetailsModelCopyWith<$Res> {
  factory _$$CourseDetailsModelImplCopyWith(_$CourseDetailsModelImpl value,
          $Res Function(_$CourseDetailsModelImpl) then) =
      __$$CourseDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      List<TeacherModel>? teachers,
      int totalLectures,
      int completedLectures,
      double price,
      String currency,
      double? discount,
      int participants,
      double? rating,
      List<SectionModel>? sections,
      String? currentLectureId,
      String? currentSectionId,
      String? promoUrl,
      String? imageUrl,
      bool isSubscribed});
}

/// @nodoc
class __$$CourseDetailsModelImplCopyWithImpl<$Res>
    extends _$CourseDetailsModelCopyWithImpl<$Res, _$CourseDetailsModelImpl>
    implements _$$CourseDetailsModelImplCopyWith<$Res> {
  __$$CourseDetailsModelImplCopyWithImpl(_$CourseDetailsModelImpl _value,
      $Res Function(_$CourseDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? teachers = freezed,
    Object? totalLectures = null,
    Object? completedLectures = null,
    Object? price = null,
    Object? currency = null,
    Object? discount = freezed,
    Object? participants = null,
    Object? rating = freezed,
    Object? sections = freezed,
    Object? currentLectureId = freezed,
    Object? currentSectionId = freezed,
    Object? promoUrl = freezed,
    Object? imageUrl = freezed,
    Object? isSubscribed = null,
  }) {
    return _then(_$CourseDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      teachers: freezed == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>?,
      totalLectures: null == totalLectures
          ? _value.totalLectures
          : totalLectures // ignore: cast_nullable_to_non_nullable
              as int,
      completedLectures: null == completedLectures
          ? _value.completedLectures
          : completedLectures // ignore: cast_nullable_to_non_nullable
              as int,
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
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>?,
      currentLectureId: freezed == currentLectureId
          ? _value.currentLectureId
          : currentLectureId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentSectionId: freezed == currentSectionId
          ? _value.currentSectionId
          : currentSectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      promoUrl: freezed == promoUrl
          ? _value.promoUrl
          : promoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CourseDetailsModelImpl implements _CourseDetailsModel {
  const _$CourseDetailsModelImpl(
      {required this.id,
      required this.name,
      this.description,
      final List<TeacherModel>? teachers,
      this.totalLectures = 0,
      this.completedLectures = 0,
      this.price = 0,
      this.currency = 'IQD',
      this.discount,
      this.participants = 0,
      this.rating,
      final List<SectionModel>? sections,
      this.currentLectureId,
      this.currentSectionId,
      this.promoUrl,
      this.imageUrl,
      this.isSubscribed = false})
      : _teachers = teachers,
        _sections = sections;

  factory _$CourseDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseDetailsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  final List<TeacherModel>? _teachers;
  @override
  List<TeacherModel>? get teachers {
    final value = _teachers;
    if (value == null) return null;
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int totalLectures;
  @override
  @JsonKey()
  final int completedLectures;
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
  final int participants;
  @override
  final double? rating;
  final List<SectionModel>? _sections;
  @override
  List<SectionModel>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? currentLectureId;
  @override
  final String? currentSectionId;
  @override
  final String? promoUrl;
  @override
  final String? imageUrl;
  @override
  @JsonKey()
  final bool isSubscribed;

  @override
  String toString() {
    return 'CourseDetailsModel(id: $id, name: $name, description: $description, teachers: $teachers, totalLectures: $totalLectures, completedLectures: $completedLectures, price: $price, currency: $currency, discount: $discount, participants: $participants, rating: $rating, sections: $sections, currentLectureId: $currentLectureId, currentSectionId: $currentSectionId, promoUrl: $promoUrl, imageUrl: $imageUrl, isSubscribed: $isSubscribed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.totalLectures, totalLectures) ||
                other.totalLectures == totalLectures) &&
            (identical(other.completedLectures, completedLectures) ||
                other.completedLectures == completedLectures) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.participants, participants) ||
                other.participants == participants) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.currentLectureId, currentLectureId) ||
                other.currentLectureId == currentLectureId) &&
            (identical(other.currentSectionId, currentSectionId) ||
                other.currentSectionId == currentSectionId) &&
            (identical(other.promoUrl, promoUrl) ||
                other.promoUrl == promoUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_teachers),
      totalLectures,
      completedLectures,
      price,
      currency,
      discount,
      participants,
      rating,
      const DeepCollectionEquality().hash(_sections),
      currentLectureId,
      currentSectionId,
      promoUrl,
      imageUrl,
      isSubscribed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDetailsModelImplCopyWith<_$CourseDetailsModelImpl> get copyWith =>
      __$$CourseDetailsModelImplCopyWithImpl<_$CourseDetailsModelImpl>(
          this, _$identity);
}

abstract class _CourseDetailsModel implements CourseDetailsModel {
  const factory _CourseDetailsModel(
      {required final String id,
      required final String name,
      final String? description,
      final List<TeacherModel>? teachers,
      final int totalLectures,
      final int completedLectures,
      final double price,
      final String currency,
      final double? discount,
      final int participants,
      final double? rating,
      final List<SectionModel>? sections,
      final String? currentLectureId,
      final String? currentSectionId,
      final String? promoUrl,
      final String? imageUrl,
      final bool isSubscribed}) = _$CourseDetailsModelImpl;

  factory _CourseDetailsModel.fromJson(Map<String, dynamic> json) =
      _$CourseDetailsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  List<TeacherModel>? get teachers;
  @override
  int get totalLectures;
  @override
  int get completedLectures;
  @override
  double get price;
  @override
  String get currency;
  @override
  double? get discount;
  @override
  int get participants;
  @override
  double? get rating;
  @override
  List<SectionModel>? get sections;
  @override
  String? get currentLectureId;
  @override
  String? get currentSectionId;
  @override
  String? get promoUrl;
  @override
  String? get imageUrl;
  @override
  bool get isSubscribed;
  @override
  @JsonKey(ignore: true)
  _$$CourseDetailsModelImplCopyWith<_$CourseDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LectureFileModel _$LectureFileModelFromJson(Map<String, dynamic> json) {
  return _LectureFileModel.fromJson(json);
}

/// @nodoc
mixin _$LectureFileModel {
  String get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LectureFileModelCopyWith<LectureFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureFileModelCopyWith<$Res> {
  factory $LectureFileModelCopyWith(
          LectureFileModel value, $Res Function(LectureFileModel) then) =
      _$LectureFileModelCopyWithImpl<$Res, LectureFileModel>;
  @useResult
  $Res call({String id, int type, String url, String extension, String name});
}

/// @nodoc
class _$LectureFileModelCopyWithImpl<$Res, $Val extends LectureFileModel>
    implements $LectureFileModelCopyWith<$Res> {
  _$LectureFileModelCopyWithImpl(this._value, this._then);

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
              as int,
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
abstract class _$$LectureFileModelImplCopyWith<$Res>
    implements $LectureFileModelCopyWith<$Res> {
  factory _$$LectureFileModelImplCopyWith(_$LectureFileModelImpl value,
          $Res Function(_$LectureFileModelImpl) then) =
      __$$LectureFileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int type, String url, String extension, String name});
}

/// @nodoc
class __$$LectureFileModelImplCopyWithImpl<$Res>
    extends _$LectureFileModelCopyWithImpl<$Res, _$LectureFileModelImpl>
    implements _$$LectureFileModelImplCopyWith<$Res> {
  __$$LectureFileModelImplCopyWithImpl(_$LectureFileModelImpl _value,
      $Res Function(_$LectureFileModelImpl) _then)
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
    return _then(_$LectureFileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$LectureFileModelImpl implements _LectureFileModel {
  const _$LectureFileModelImpl(
      {required this.id,
      required this.type,
      required this.url,
      required this.extension,
      required this.name});

  factory _$LectureFileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LectureFileModelImplFromJson(json);

  @override
  final String id;
  @override
  final int type;
  @override
  final String url;
  @override
  final String extension;
  @override
  final String name;

  @override
  String toString() {
    return 'LectureFileModel(id: $id, type: $type, url: $url, extension: $extension, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureFileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, url, extension, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureFileModelImplCopyWith<_$LectureFileModelImpl> get copyWith =>
      __$$LectureFileModelImplCopyWithImpl<_$LectureFileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LectureFileModelImplToJson(
      this,
    );
  }
}

abstract class _LectureFileModel implements LectureFileModel {
  const factory _LectureFileModel(
      {required final String id,
      required final int type,
      required final String url,
      required final String extension,
      required final String name}) = _$LectureFileModelImpl;

  factory _LectureFileModel.fromJson(Map<String, dynamic> json) =
      _$LectureFileModelImpl.fromJson;

  @override
  String get id;
  @override
  int get type;
  @override
  String get url;
  @override
  String get extension;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$LectureFileModelImplCopyWith<_$LectureFileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LectureModel _$LectureModelFromJson(Map<String, dynamic> json) {
  return _LectureModel.fromJson(json);
}

/// @nodoc
mixin _$LectureModel {
  String get id => throw _privateConstructorUsedError;
  String get sectionId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get subjectId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<LectureFileModel>? get files => throw _privateConstructorUsedError;
  List<McqGameModel>? get mcqGames => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  String? get completedDuration => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get participants => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LectureModelCopyWith<LectureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureModelCopyWith<$Res> {
  factory $LectureModelCopyWith(
          LectureModel value, $Res Function(LectureModel) then) =
      _$LectureModelCopyWithImpl<$Res, LectureModel>;
  @useResult
  $Res call(
      {String id,
      String sectionId,
      String name,
      String? subjectId,
      String? description,
      String? videoUrl,
      String? imageUrl,
      List<LectureFileModel>? files,
      List<McqGameModel>? mcqGames,
      double duration,
      String? completedDuration,
      bool isCompleted,
      double price,
      String currency,
      double? discount,
      bool isSubscribed,
      double? rating,
      int? participants});
}

/// @nodoc
class _$LectureModelCopyWithImpl<$Res, $Val extends LectureModel>
    implements $LectureModelCopyWith<$Res> {
  _$LectureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sectionId = null,
    Object? name = null,
    Object? subjectId = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? imageUrl = freezed,
    Object? files = freezed,
    Object? mcqGames = freezed,
    Object? duration = null,
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
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
              as List<LectureFileModel>?,
      mcqGames: freezed == mcqGames
          ? _value.mcqGames
          : mcqGames // ignore: cast_nullable_to_non_nullable
              as List<McqGameModel>?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      completedDuration: freezed == completedDuration
          ? _value.completedDuration
          : completedDuration // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$LectureModelImplCopyWith<$Res>
    implements $LectureModelCopyWith<$Res> {
  factory _$$LectureModelImplCopyWith(
          _$LectureModelImpl value, $Res Function(_$LectureModelImpl) then) =
      __$$LectureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sectionId,
      String name,
      String? subjectId,
      String? description,
      String? videoUrl,
      String? imageUrl,
      List<LectureFileModel>? files,
      List<McqGameModel>? mcqGames,
      double duration,
      String? completedDuration,
      bool isCompleted,
      double price,
      String currency,
      double? discount,
      bool isSubscribed,
      double? rating,
      int? participants});
}

/// @nodoc
class __$$LectureModelImplCopyWithImpl<$Res>
    extends _$LectureModelCopyWithImpl<$Res, _$LectureModelImpl>
    implements _$$LectureModelImplCopyWith<$Res> {
  __$$LectureModelImplCopyWithImpl(
      _$LectureModelImpl _value, $Res Function(_$LectureModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sectionId = null,
    Object? name = null,
    Object? subjectId = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? imageUrl = freezed,
    Object? files = freezed,
    Object? mcqGames = freezed,
    Object? duration = null,
    Object? completedDuration = freezed,
    Object? isCompleted = null,
    Object? price = null,
    Object? currency = null,
    Object? discount = freezed,
    Object? isSubscribed = null,
    Object? rating = freezed,
    Object? participants = freezed,
  }) {
    return _then(_$LectureModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
              as List<LectureFileModel>?,
      mcqGames: freezed == mcqGames
          ? _value._mcqGames
          : mcqGames // ignore: cast_nullable_to_non_nullable
              as List<McqGameModel>?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      completedDuration: freezed == completedDuration
          ? _value.completedDuration
          : completedDuration // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable(createToJson: false)
class _$LectureModelImpl implements _LectureModel {
  const _$LectureModelImpl(
      {required this.id,
      required this.sectionId,
      required this.name,
      this.subjectId,
      this.description,
      this.videoUrl,
      this.imageUrl,
      final List<LectureFileModel>? files,
      final List<McqGameModel>? mcqGames,
      this.duration = 0,
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

  factory _$LectureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LectureModelImplFromJson(json);

  @override
  final String id;
  @override
  final String sectionId;
  @override
  final String name;
  @override
  final String? subjectId;
  @override
  final String? description;
  @override
  final String? videoUrl;
  @override
  final String? imageUrl;
  final List<LectureFileModel>? _files;
  @override
  List<LectureFileModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<McqGameModel>? _mcqGames;
  @override
  List<McqGameModel>? get mcqGames {
    final value = _mcqGames;
    if (value == null) return null;
    if (_mcqGames is EqualUnmodifiableListView) return _mcqGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final double duration;
  @override
  final String? completedDuration;
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
    return 'LectureModel(id: $id, sectionId: $sectionId, name: $name, subjectId: $subjectId, description: $description, videoUrl: $videoUrl, imageUrl: $imageUrl, files: $files, mcqGames: $mcqGames, duration: $duration, completedDuration: $completedDuration, isCompleted: $isCompleted, price: $price, currency: $currency, discount: $discount, isSubscribed: $isSubscribed, rating: $rating, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.name, name) || other.name == name) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sectionId,
      name,
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
  _$$LectureModelImplCopyWith<_$LectureModelImpl> get copyWith =>
      __$$LectureModelImplCopyWithImpl<_$LectureModelImpl>(this, _$identity);
}

abstract class _LectureModel implements LectureModel {
  const factory _LectureModel(
      {required final String id,
      required final String sectionId,
      required final String name,
      final String? subjectId,
      final String? description,
      final String? videoUrl,
      final String? imageUrl,
      final List<LectureFileModel>? files,
      final List<McqGameModel>? mcqGames,
      final double duration,
      final String? completedDuration,
      final bool isCompleted,
      final double price,
      final String currency,
      final double? discount,
      final bool isSubscribed,
      final double? rating,
      final int? participants}) = _$LectureModelImpl;

  factory _LectureModel.fromJson(Map<String, dynamic> json) =
      _$LectureModelImpl.fromJson;

  @override
  String get id;
  @override
  String get sectionId;
  @override
  String get name;
  @override
  String? get subjectId;
  @override
  String? get description;
  @override
  String? get videoUrl;
  @override
  String? get imageUrl;
  @override
  List<LectureFileModel>? get files;
  @override
  List<McqGameModel>? get mcqGames;
  @override
  double get duration;
  @override
  String? get completedDuration;
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
  _$$LectureModelImplCopyWith<_$LectureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) {
  return _SectionModel.fromJson(json);
}

/// @nodoc
mixin _$SectionModel {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TeacherModel? get teacher => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionModelCopyWith<SectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionModelCopyWith<$Res> {
  factory $SectionModelCopyWith(
          SectionModel value, $Res Function(SectionModel) then) =
      _$SectionModelCopyWithImpl<$Res, SectionModel>;
  @useResult
  $Res call(
      {String id,
      String courseId,
      String name,
      String? description,
      TeacherModel? teacher});

  $TeacherModelCopyWith<$Res>? get teacher;
}

/// @nodoc
class _$SectionModelCopyWithImpl<$Res, $Val extends SectionModel>
    implements $SectionModelCopyWith<$Res> {
  _$SectionModelCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? teacher = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as TeacherModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherModelCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $TeacherModelCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionModelImplCopyWith<$Res>
    implements $SectionModelCopyWith<$Res> {
  factory _$$SectionModelImplCopyWith(
          _$SectionModelImpl value, $Res Function(_$SectionModelImpl) then) =
      __$$SectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String courseId,
      String name,
      String? description,
      TeacherModel? teacher});

  @override
  $TeacherModelCopyWith<$Res>? get teacher;
}

/// @nodoc
class __$$SectionModelImplCopyWithImpl<$Res>
    extends _$SectionModelCopyWithImpl<$Res, _$SectionModelImpl>
    implements _$$SectionModelImplCopyWith<$Res> {
  __$$SectionModelImplCopyWithImpl(
      _$SectionModelImpl _value, $Res Function(_$SectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? name = null,
    Object? description = freezed,
    Object? teacher = freezed,
  }) {
    return _then(_$SectionModelImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as TeacherModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SectionModelImpl implements _SectionModel {
  const _$SectionModelImpl(
      {required this.id,
      required this.courseId,
      required this.name,
      this.description,
      this.teacher});

  factory _$SectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final TeacherModel? teacher;

  @override
  String toString() {
    return 'SectionModel(id: $id, courseId: $courseId, name: $name, description: $description, teacher: $teacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, courseId, name, description, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionModelImplCopyWith<_$SectionModelImpl> get copyWith =>
      __$$SectionModelImplCopyWithImpl<_$SectionModelImpl>(this, _$identity);
}

abstract class _SectionModel implements SectionModel {
  const factory _SectionModel(
      {required final String id,
      required final String courseId,
      required final String name,
      final String? description,
      final TeacherModel? teacher}) = _$SectionModelImpl;

  factory _SectionModel.fromJson(Map<String, dynamic> json) =
      _$SectionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get name;
  @override
  String? get description;
  @override
  TeacherModel? get teacher;
  @override
  @JsonKey(ignore: true)
  _$$SectionModelImplCopyWith<_$SectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
