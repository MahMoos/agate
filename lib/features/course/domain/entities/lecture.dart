part of 'entities.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    required String id,
    required String title,
    required String courseId,
    required String sectionId,
    required String courseName,
    String? subjectId,
    String? description,
    String? videoUrl,
    String? imageUrl,
    List<LectureFile>? files,
    Duration? duration,
    Duration? completedDuration,
    @Default(false) bool isCompleted,
    @Default(0) double price,
    @Default('IQD') String currency,
    double? discount,
    @Default(false) bool isSubscribed,
    double? rating,
  }) = _Lecture;
}
