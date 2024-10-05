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
mixin _$Department {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  List<Department>? get subDepartments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? parentId,
      String? logoUrl,
      List<Department>? subDepartments});
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parentId = freezed,
    Object? logoUrl = freezed,
    Object? subDepartments = freezed,
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
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subDepartments: freezed == subDepartments
          ? _value.subDepartments
          : subDepartments // ignore: cast_nullable_to_non_nullable
              as List<Department>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentImplCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$DepartmentImplCopyWith(
          _$DepartmentImpl value, $Res Function(_$DepartmentImpl) then) =
      __$$DepartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? parentId,
      String? logoUrl,
      List<Department>? subDepartments});
}

/// @nodoc
class __$$DepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$DepartmentImpl>
    implements _$$DepartmentImplCopyWith<$Res> {
  __$$DepartmentImplCopyWithImpl(
      _$DepartmentImpl _value, $Res Function(_$DepartmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parentId = freezed,
    Object? logoUrl = freezed,
    Object? subDepartments = freezed,
  }) {
    return _then(_$DepartmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subDepartments: freezed == subDepartments
          ? _value._subDepartments
          : subDepartments // ignore: cast_nullable_to_non_nullable
              as List<Department>?,
    ));
  }
}

/// @nodoc

class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl(
      {required this.id,
      required this.name,
      this.parentId,
      this.logoUrl,
      final List<Department>? subDepartments})
      : _subDepartments = subDepartments;

  @override
  final String id;
  @override
  final String name;
  @override
  final String? parentId;
  @override
  final String? logoUrl;
  final List<Department>? _subDepartments;
  @override
  List<Department>? get subDepartments {
    final value = _subDepartments;
    if (value == null) return null;
    if (_subDepartments is EqualUnmodifiableListView) return _subDepartments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Department(id: $id, name: $name, parentId: $parentId, logoUrl: $logoUrl, subDepartments: $subDepartments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            const DeepCollectionEquality()
                .equals(other._subDepartments, _subDepartments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, parentId, logoUrl,
      const DeepCollectionEquality().hash(_subDepartments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      __$$DepartmentImplCopyWithImpl<_$DepartmentImpl>(this, _$identity);
}

abstract class _Department implements Department {
  const factory _Department(
      {required final String id,
      required final String name,
      final String? parentId,
      final String? logoUrl,
      final List<Department>? subDepartments}) = _$DepartmentImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get parentId;
  @override
  String? get logoUrl;
  @override
  List<Department>? get subDepartments;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Subject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool get isSubscribed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      double price,
      String currency,
      double? discount,
      String? imageUrl,
      bool isSubscribed});
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

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
    Object? price = null,
    Object? currency = null,
    Object? discount = freezed,
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
abstract class _$$SubjectImplCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$SubjectImplCopyWith(
          _$SubjectImpl value, $Res Function(_$SubjectImpl) then) =
      __$$SubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      double price,
      String currency,
      double? discount,
      String? imageUrl,
      bool isSubscribed});
}

/// @nodoc
class __$$SubjectImplCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$SubjectImpl>
    implements _$$SubjectImplCopyWith<$Res> {
  __$$SubjectImplCopyWithImpl(
      _$SubjectImpl _value, $Res Function(_$SubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? currency = null,
    Object? discount = freezed,
    Object? imageUrl = freezed,
    Object? isSubscribed = null,
  }) {
    return _then(_$SubjectImpl(
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

class _$SubjectImpl implements _Subject {
  const _$SubjectImpl(
      {required this.id,
      required this.name,
      this.description,
      this.price = 0,
      this.currency = 'IQD',
      this.discount,
      this.imageUrl,
      this.isSubscribed = false});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final String currency;
  @override
  final double? discount;
  @override
  final String? imageUrl;
  @override
  @JsonKey()
  final bool isSubscribed;

  @override
  String toString() {
    return 'Subject(id: $id, name: $name, description: $description, price: $price, currency: $currency, discount: $discount, imageUrl: $imageUrl, isSubscribed: $isSubscribed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, price,
      currency, discount, imageUrl, isSubscribed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      __$$SubjectImplCopyWithImpl<_$SubjectImpl>(this, _$identity);
}

abstract class _Subject implements Subject {
  const factory _Subject(
      {required final String id,
      required final String name,
      final String? description,
      final double price,
      final String currency,
      final double? discount,
      final String? imageUrl,
      final bool isSubscribed}) = _$SubjectImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get price;
  @override
  String get currency;
  @override
  double? get discount;
  @override
  String? get imageUrl;
  @override
  bool get isSubscribed;
  @override
  @JsonKey(ignore: true)
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
