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
      totalLectures: json['totalLectures'] as int? ?? 0,
      completedLectures: json['completedLectures'] as int? ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? 'IQD',
      discount: (json['discount'] as num?)?.toDouble(),
      participants: json['participants'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentLectureId: json['currentLectureId'] as String?,
      currentSectionId: json['currentSectionId'] as String?,
      promoUrl: json['promoUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

_$LectureModelImpl _$$LectureModelImplFromJson(Map<String, dynamic> json) =>
    _$LectureModelImpl(
      id: json['id'] as String,
      sectionId: json['sectionId'] as String,
      name: json['name'] as String,
      subjectId: json['subjectId'] as String?,
      description: json['description'] as String?,
      videoUrl: json['videoUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
      duration: json['duration'] as String?,
      completedDuration: json['completedDuration'] as String?,
      isCompleted: json['isCompleted'] as bool? ?? false,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? 'IQD',
      discount: (json['discount'] as num?)?.toDouble(),
      isSubscribed: json['isSubscribed'] as bool? ?? false,
      rating: (json['rating'] as num?)?.toDouble(),
      participants: json['participants'] as int?,
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
