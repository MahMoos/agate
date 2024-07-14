// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseDetailsModelImpl _$$CourseDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseDetailsModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      teachers: (json['teachers'] as List<dynamic>?)
          ?.map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalLectures: (json['totalLectures'] as num?)?.toInt() ?? 0,
      completedLectures: (json['completedLectures'] as num?)?.toInt() ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? 'IQD',
      discount: (json['discount'] as num?)?.toDouble(),
      participants: (json['participants'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentLectureId: json['currentLectureId'] as String?,
      currentSectionId: json['currentSectionId'] as String?,
      promoUrl: json['promoUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isSubscribed: json['isSubscribed'] as bool? ?? false,
    );

_$LectureFileModelImpl _$$LectureFileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LectureFileModelImpl(
      id: json['id'] as String,
      type: (json['type'] as num).toInt(),
      url: json['url'] as String,
      extension: json['extension'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$LectureFileModelImplToJson(
        _$LectureFileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'url': instance.url,
      'extension': instance.extension,
      'name': instance.name,
    };

_$LectureModelImpl _$$LectureModelImplFromJson(Map<String, dynamic> json) =>
    _$LectureModelImpl(
      id: json['id'] as String,
      sectionId: json['sectionId'] as String,
      name: json['name'] as String,
      subjectId: json['subjectId'] as String?,
      description: json['description'] as String?,
      videoUrl: json['videoUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => LectureFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mcqGames: (json['mcqGames'] as List<dynamic>?)
          ?.map((e) => McqGameModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: (json['duration'] as num?)?.toDouble() ?? 0,
      completedDuration: json['completedDuration'] as String?,
      isCompleted: json['isCompleted'] as bool? ?? false,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? 'IQD',
      discount: (json['discount'] as num?)?.toDouble(),
      isSubscribed: json['isSubscribed'] as bool? ?? false,
      rating: (json['rating'] as num?)?.toDouble(),
      participants: (json['participants'] as num?)?.toInt(),
    );

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      rate: (json['rate'] as num).toDouble(),
      id: json['id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      createdBy: json['createdBy'] as String?,
      text: json['text'] as String?,
    );

_$SectionModelImpl _$$SectionModelImplFromJson(Map<String, dynamic> json) =>
    _$SectionModelImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      teacher: json['teacher'] == null
          ? null
          : TeacherModel.fromJson(json['teacher'] as Map<String, dynamic>),
    );
