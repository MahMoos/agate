// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      author: json['author'] as String?,
      numberOfPages: (json['numberOfPages'] as num?)?.toInt(),
      publication: json['publication'] == null
          ? null
          : DateTime.parse(json['publication'] as String),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'numberOfPages': instance.numberOfPages,
      'publication': instance.publication?.toIso8601String(),
      'files': instance.files,
    };

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

_$McqGameModelImpl _$$McqGameModelImplFromJson(Map<String, dynamic> json) =>
    _$McqGameModelImpl(
          id: json['id'] as String,
      question: json['question'] as String,
      correctAnswerId: (json['correctAnswerId'] as num).toInt(),
      answerOptions: (json['answerOptions'] as List<dynamic>)
          .map((e) => McqAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subjectId: json['subjectId'] as String?,
      rate: (json['rate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$McqGameModelImplToJson(_$McqGameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'correctAnswerId': instance.correctAnswerId,
      'answerOptions': instance.answerOptions,
      'subjectId': instance.subjectId,
      'rate': instance.rate,
    };

_$McqAnswerModelImpl _$$McqAnswerModelImplFromJson(Map<String, dynamic> json) =>
    _$McqAnswerModelImpl(
          id: (json['id'] as num).toInt(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$McqAnswerModelImplToJson(
        _$McqAnswerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
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
