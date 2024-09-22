// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseModelImpl _$$CourseModelImplFromJson(Map<String, dynamic> json) =>
    _$CourseModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      totalLectures: (json['totalLectures'] as num?)?.toInt(),
      teachers: (json['teachers'] as List<dynamic>?)
          ?.map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      participants: (json['participants'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CourseModelImplToJson(_$CourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'totalLectures': instance.totalLectures,
      'teachers': instance.teachers,
      'imageUrl': instance.imageUrl,
      'discount': instance.discount,
      'participants': instance.participants,
      'rating': instance.rating,
    };

_$DepartmentModelImpl _$$DepartmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DepartmentModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      parentId: json['parentId'] as String?,
    );

Map<String, dynamic> _$$DepartmentModelImplToJson(
        _$DepartmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'parentId': instance.parentId,
    };

_$FileModelImpl _$$FileModelImplFromJson(Map<String, dynamic> json) =>
    _$FileModelImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      extension: json['extension'] as String?,
      size: (json['size'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FileModelImplToJson(_$FileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'description': instance.description,
      'extension': instance.extension,
      'size': instance.size,
    };

_$MyCourseModelImpl _$$MyCourseModelImplFromJson(Map<String, dynamic> json) =>
    _$MyCourseModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      completedLectures: (json['completedLectures'] as num).toInt(),
      totalLectures: (json['totalLectures'] as num).toInt(),
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? 'IQD',
      discount: (json['discount'] as num?)?.toDouble(),
      teachers: (json['teachers'] as List<dynamic>?)
          ?.map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentLectureId: json['currentLectureId'] as String?,
      imageUrl: json['imageUrl'] as String?,
      participants: (json['participants'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MyCourseModelImplToJson(_$MyCourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'completedLectures': instance.completedLectures,
      'totalLectures': instance.totalLectures,
      'price': instance.price,
      'currency': instance.currency,
      'discount': instance.discount,
      'teachers': instance.teachers,
      'currentLectureId': instance.currentLectureId,
      'imageUrl': instance.imageUrl,
      'participants': instance.participants,
      'rating': instance.rating,
    };

_$SubjectModelImpl _$$SubjectModelImplFromJson(Map<String, dynamic> json) =>
    _$SubjectModelImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$SubjectModelImplToJson(_$SubjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };

_$TeacherModelImpl _$$TeacherModelImplFromJson(Map<String, dynamic> json) =>
    _$TeacherModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      specialization: json['specialization'] as String?,
      degree: json['degree'] as String?,
      prefix: json['prefix'] as String?,
      imageUrl: json['imageUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$TeacherModelImplToJson(_$TeacherModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'specialization': instance.specialization,
      'degree': instance.degree,
      'prefix': instance.prefix,
      'imageUrl': instance.imageUrl,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
