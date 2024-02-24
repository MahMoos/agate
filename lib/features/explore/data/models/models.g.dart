// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      slides: (json['slides'] as List<dynamic>?)
          ?.map((e) => SlideModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      myCourses: (json['myCourses'] as List<dynamic>?)
          ?.map((e) => MyCourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialCourses: (json['specialCourses'] as List<dynamic>?)
          ?.map((e) => CourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'slides': instance.slides,
      'myCourses': instance.myCourses,
      'specialCourses': instance.specialCourses,
    };

_$SlideModelImpl _$$SlideModelImplFromJson(Map<String, dynamic> json) =>
    _$SlideModelImpl(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      actionUrl: json['actionUrl'] as String?,
    );

Map<String, dynamic> _$$SlideModelImplToJson(_$SlideModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'actionUrl': instance.actionUrl,
    };
