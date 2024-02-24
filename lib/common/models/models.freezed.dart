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

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get totalLectures => throw _privateConstructorUsedError;
  List<TeacherModel>? get teachers => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  int? get participants => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      int? totalLectures,
      List<TeacherModel>? teachers,
      String? imageUrl,
      double? price,
      double? discount,
      int? participants,
      double? rating});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? totalLectures = freezed,
    Object? teachers = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? participants = freezed,
    Object? rating = freezed,
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
      totalLectures: freezed == totalLectures
          ? _value.totalLectures
          : totalLectures // ignore: cast_nullable_to_non_nullable
              as int?,
      teachers: freezed == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseModelImplCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$CourseModelImplCopyWith(
          _$CourseModelImpl value, $Res Function(_$CourseModelImpl) then) =
      __$$CourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int? totalLectures,
      List<TeacherModel>? teachers,
      String? imageUrl,
      double? price,
      double? discount,
      int? participants,
      double? rating});
}

/// @nodoc
class __$$CourseModelImplCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$CourseModelImpl>
    implements _$$CourseModelImplCopyWith<$Res> {
  __$$CourseModelImplCopyWithImpl(
      _$CourseModelImpl _value, $Res Function(_$CourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? totalLectures = freezed,
    Object? teachers = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? participants = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$CourseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalLectures: freezed == totalLectures
          ? _value.totalLectures
          : totalLectures // ignore: cast_nullable_to_non_nullable
              as int?,
      teachers: freezed == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseModelImpl implements _CourseModel {
  const _$CourseModelImpl(
      {required this.id,
      required this.name,
      this.totalLectures,
      final List<TeacherModel>? teachers,
      this.imageUrl,
      this.price,
      this.discount,
      this.participants,
      this.rating})
      : _teachers = teachers;

  factory _$CourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int? totalLectures;
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
  final String? imageUrl;
  @override
  final double? price;
  @override
  final double? discount;
  @override
  final int? participants;
  @override
  final double? rating;

  @override
  String toString() {
    return 'CourseModel(id: $id, name: $name, totalLectures: $totalLectures, teachers: $teachers, imageUrl: $imageUrl, price: $price, discount: $discount, participants: $participants, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalLectures, totalLectures) ||
                other.totalLectures == totalLectures) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.participants, participants) ||
                other.participants == participants) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      totalLectures,
      const DeepCollectionEquality().hash(_teachers),
      imageUrl,
      price,
      discount,
      participants,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseModelImplCopyWith<_$CourseModelImpl> get copyWith =>
      __$$CourseModelImplCopyWithImpl<_$CourseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseModelImplToJson(
      this,
    );
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {required final String id,
      required final String name,
      final int? totalLectures,
      final List<TeacherModel>? teachers,
      final String? imageUrl,
      final double? price,
      final double? discount,
      final int? participants,
      final double? rating}) = _$CourseModelImpl;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$CourseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int? get totalLectures;
  @override
  List<TeacherModel>? get teachers;
  @override
  String? get imageUrl;
  @override
  double? get price;
  @override
  double? get discount;
  @override
  int? get participants;
  @override
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$CourseModelImplCopyWith<_$CourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) {
  return _DepartmentModel.fromJson(json);
}

/// @nodoc
mixin _$DepartmentModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentModelCopyWith<DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentModelCopyWith<$Res> {
  factory $DepartmentModelCopyWith(
          DepartmentModel value, $Res Function(DepartmentModel) then) =
      _$DepartmentModelCopyWithImpl<$Res, DepartmentModel>;
  @useResult
  $Res call({String id, String name, String? imageUrl, String? parentId});
}

/// @nodoc
class _$DepartmentModelCopyWithImpl<$Res, $Val extends DepartmentModel>
    implements $DepartmentModelCopyWith<$Res> {
  _$DepartmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? parentId = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentModelImplCopyWith<$Res>
    implements $DepartmentModelCopyWith<$Res> {
  factory _$$DepartmentModelImplCopyWith(_$DepartmentModelImpl value,
          $Res Function(_$DepartmentModelImpl) then) =
      __$$DepartmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? imageUrl, String? parentId});
}

/// @nodoc
class __$$DepartmentModelImplCopyWithImpl<$Res>
    extends _$DepartmentModelCopyWithImpl<$Res, _$DepartmentModelImpl>
    implements _$$DepartmentModelImplCopyWith<$Res> {
  __$$DepartmentModelImplCopyWithImpl(
      _$DepartmentModelImpl _value, $Res Function(_$DepartmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_$DepartmentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentModelImpl implements _DepartmentModel {
  const _$DepartmentModelImpl(
      {required this.id, required this.name, this.imageUrl, this.parentId});

  factory _$DepartmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? imageUrl;
  @override
  final String? parentId;

  @override
  String toString() {
    return 'DepartmentModel(id: $id, name: $name, imageUrl: $imageUrl, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentModelImplCopyWith<_$DepartmentModelImpl> get copyWith =>
      __$$DepartmentModelImplCopyWithImpl<_$DepartmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentModelImplToJson(
      this,
    );
  }
}

abstract class _DepartmentModel implements DepartmentModel {
  const factory _DepartmentModel(
      {required final String id,
      required final String name,
      final String? imageUrl,
      final String? parentId}) = _$DepartmentModelImpl;

  factory _DepartmentModel.fromJson(Map<String, dynamic> json) =
      _$DepartmentModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  String? get parentId;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentModelImplCopyWith<_$DepartmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectModel _$SubjectModelFromJson(Map<String, dynamic> json) {
  return _SubjectModel.fromJson(json);
}

/// @nodoc
mixin _$SubjectModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectModelCopyWith<SubjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectModelCopyWith<$Res> {
  factory $SubjectModelCopyWith(
          SubjectModel value, $Res Function(SubjectModel) then) =
      _$SubjectModelCopyWithImpl<$Res, SubjectModel>;
  @useResult
  $Res call({String id, String name, String? description, String? imageUrl});
}

/// @nodoc
class _$SubjectModelCopyWithImpl<$Res, $Val extends SubjectModel>
    implements $SubjectModelCopyWith<$Res> {
  _$SubjectModelCopyWithImpl(this._value, this._then);

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
    Object? imageUrl = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectModelImplCopyWith<$Res>
    implements $SubjectModelCopyWith<$Res> {
  factory _$$SubjectModelImplCopyWith(
          _$SubjectModelImpl value, $Res Function(_$SubjectModelImpl) then) =
      __$$SubjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? description, String? imageUrl});
}

/// @nodoc
class __$$SubjectModelImplCopyWithImpl<$Res>
    extends _$SubjectModelCopyWithImpl<$Res, _$SubjectModelImpl>
    implements _$$SubjectModelImplCopyWith<$Res> {
  __$$SubjectModelImplCopyWithImpl(
      _$SubjectModelImpl _value, $Res Function(_$SubjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$SubjectModelImpl(
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectModelImpl implements _SubjectModel {
  const _$SubjectModelImpl(
      {required this.id, required this.name, this.description, this.imageUrl});

  factory _$SubjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'SubjectModel(id: $id, name: $name, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectModelImplCopyWith<_$SubjectModelImpl> get copyWith =>
      __$$SubjectModelImplCopyWithImpl<_$SubjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectModelImplToJson(
      this,
    );
  }
}

abstract class _SubjectModel implements SubjectModel {
  const factory _SubjectModel(
      {required final String id,
      required final String name,
      final String? description,
      final String? imageUrl}) = _$SubjectModelImpl;

  factory _SubjectModel.fromJson(Map<String, dynamic> json) =
      _$SubjectModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$SubjectModelImplCopyWith<_$SubjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) {
  return _TeacherModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get specialization => throw _privateConstructorUsedError;
  String? get degree => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherModelCopyWith<TeacherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherModelCopyWith<$Res> {
  factory $TeacherModelCopyWith(
          TeacherModel value, $Res Function(TeacherModel) then) =
      _$TeacherModelCopyWithImpl<$Res, TeacherModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? specialization,
      String? degree,
      String? prefix,
      String? imageUrl,
      String? phoneNumber,
      String? email});
}

/// @nodoc
class _$TeacherModelCopyWithImpl<$Res, $Val extends TeacherModel>
    implements $TeacherModelCopyWith<$Res> {
  _$TeacherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? specialization = freezed,
    Object? degree = freezed,
    Object? prefix = freezed,
    Object? imageUrl = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
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
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherModelImplCopyWith<$Res>
    implements $TeacherModelCopyWith<$Res> {
  factory _$$TeacherModelImplCopyWith(
          _$TeacherModelImpl value, $Res Function(_$TeacherModelImpl) then) =
      __$$TeacherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? specialization,
      String? degree,
      String? prefix,
      String? imageUrl,
      String? phoneNumber,
      String? email});
}

/// @nodoc
class __$$TeacherModelImplCopyWithImpl<$Res>
    extends _$TeacherModelCopyWithImpl<$Res, _$TeacherModelImpl>
    implements _$$TeacherModelImplCopyWith<$Res> {
  __$$TeacherModelImplCopyWithImpl(
      _$TeacherModelImpl _value, $Res Function(_$TeacherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? specialization = freezed,
    Object? degree = freezed,
    Object? prefix = freezed,
    Object? imageUrl = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_$TeacherModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherModelImpl implements _TeacherModel {
  const _$TeacherModelImpl(
      {required this.id,
      required this.name,
      this.specialization,
      this.degree,
      this.prefix,
      this.imageUrl,
      this.phoneNumber,
      this.email});

  factory _$TeacherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? specialization;
  @override
  final String? degree;
  @override
  final String? prefix;
  @override
  final String? imageUrl;
  @override
  final String? phoneNumber;
  @override
  final String? email;

  @override
  String toString() {
    return 'TeacherModel(id: $id, name: $name, specialization: $specialization, degree: $degree, prefix: $prefix, imageUrl: $imageUrl, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, specialization, degree,
      prefix, imageUrl, phoneNumber, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherModelImplCopyWith<_$TeacherModelImpl> get copyWith =>
      __$$TeacherModelImplCopyWithImpl<_$TeacherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherModelImplToJson(
      this,
    );
  }
}

abstract class _TeacherModel implements TeacherModel {
  const factory _TeacherModel(
      {required final String id,
      required final String name,
      final String? specialization,
      final String? degree,
      final String? prefix,
      final String? imageUrl,
      final String? phoneNumber,
      final String? email}) = _$TeacherModelImpl;

  factory _TeacherModel.fromJson(Map<String, dynamic> json) =
      _$TeacherModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get specialization;
  @override
  String? get degree;
  @override
  String? get prefix;
  @override
  String? get imageUrl;
  @override
  String? get phoneNumber;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$TeacherModelImplCopyWith<_$TeacherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyCourseModel _$MyCourseModelFromJson(Map<String, dynamic> json) {
  return _MyCourseModel.fromJson(json);
}

/// @nodoc
mixin _$MyCourseModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get completedLectures => throw _privateConstructorUsedError;
  int get totalLectures => throw _privateConstructorUsedError;
  List<TeacherModel>? get teachers => throw _privateConstructorUsedError;
  String? get currentLectureId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyCourseModelCopyWith<MyCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCourseModelCopyWith<$Res> {
  factory $MyCourseModelCopyWith(
          MyCourseModel value, $Res Function(MyCourseModel) then) =
      _$MyCourseModelCopyWithImpl<$Res, MyCourseModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      int completedLectures,
      int totalLectures,
      List<TeacherModel>? teachers,
      String? currentLectureId,
      String? imageUrl});
}

/// @nodoc
class _$MyCourseModelCopyWithImpl<$Res, $Val extends MyCourseModel>
    implements $MyCourseModelCopyWith<$Res> {
  _$MyCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? completedLectures = null,
    Object? totalLectures = null,
    Object? teachers = freezed,
    Object? currentLectureId = freezed,
    Object? imageUrl = freezed,
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
      completedLectures: null == completedLectures
          ? _value.completedLectures
          : completedLectures // ignore: cast_nullable_to_non_nullable
              as int,
      totalLectures: null == totalLectures
          ? _value.totalLectures
          : totalLectures // ignore: cast_nullable_to_non_nullable
              as int,
      teachers: freezed == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>?,
      currentLectureId: freezed == currentLectureId
          ? _value.currentLectureId
          : currentLectureId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyCourseModelImplCopyWith<$Res>
    implements $MyCourseModelCopyWith<$Res> {
  factory _$$MyCourseModelImplCopyWith(
          _$MyCourseModelImpl value, $Res Function(_$MyCourseModelImpl) then) =
      __$$MyCourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int completedLectures,
      int totalLectures,
      List<TeacherModel>? teachers,
      String? currentLectureId,
      String? imageUrl});
}

/// @nodoc
class __$$MyCourseModelImplCopyWithImpl<$Res>
    extends _$MyCourseModelCopyWithImpl<$Res, _$MyCourseModelImpl>
    implements _$$MyCourseModelImplCopyWith<$Res> {
  __$$MyCourseModelImplCopyWithImpl(
      _$MyCourseModelImpl _value, $Res Function(_$MyCourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? completedLectures = null,
    Object? totalLectures = null,
    Object? teachers = freezed,
    Object? currentLectureId = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$MyCourseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      completedLectures: null == completedLectures
          ? _value.completedLectures
          : completedLectures // ignore: cast_nullable_to_non_nullable
              as int,
      totalLectures: null == totalLectures
          ? _value.totalLectures
          : totalLectures // ignore: cast_nullable_to_non_nullable
              as int,
      teachers: freezed == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherModel>?,
      currentLectureId: freezed == currentLectureId
          ? _value.currentLectureId
          : currentLectureId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyCourseModelImpl implements _MyCourseModel {
  const _$MyCourseModelImpl(
      {required this.id,
      required this.name,
      required this.completedLectures,
      required this.totalLectures,
      final List<TeacherModel>? teachers,
      this.currentLectureId,
      this.imageUrl})
      : _teachers = teachers;

  factory _$MyCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyCourseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int completedLectures;
  @override
  final int totalLectures;
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
  final String? currentLectureId;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'MyCourseModel(id: $id, name: $name, completedLectures: $completedLectures, totalLectures: $totalLectures, teachers: $teachers, currentLectureId: $currentLectureId, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyCourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.completedLectures, completedLectures) ||
                other.completedLectures == completedLectures) &&
            (identical(other.totalLectures, totalLectures) ||
                other.totalLectures == totalLectures) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.currentLectureId, currentLectureId) ||
                other.currentLectureId == currentLectureId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      completedLectures,
      totalLectures,
      const DeepCollectionEquality().hash(_teachers),
      currentLectureId,
      imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyCourseModelImplCopyWith<_$MyCourseModelImpl> get copyWith =>
      __$$MyCourseModelImplCopyWithImpl<_$MyCourseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyCourseModelImplToJson(
      this,
    );
  }
}

abstract class _MyCourseModel implements MyCourseModel {
  const factory _MyCourseModel(
      {required final String id,
      required final String name,
      required final int completedLectures,
      required final int totalLectures,
      final List<TeacherModel>? teachers,
      final String? currentLectureId,
      final String? imageUrl}) = _$MyCourseModelImpl;

  factory _MyCourseModel.fromJson(Map<String, dynamic> json) =
      _$MyCourseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get completedLectures;
  @override
  int get totalLectures;
  @override
  List<TeacherModel>? get teachers;
  @override
  String? get currentLectureId;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$MyCourseModelImplCopyWith<_$MyCourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
