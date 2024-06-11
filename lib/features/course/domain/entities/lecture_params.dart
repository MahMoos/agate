part of 'entities.dart';

class LectureParams {
  const LectureParams({
    required this.lectureId,
    required this.courseId,
    this.completedDuration,
  });

  final String lectureId;
  final String courseId;
  final Duration? completedDuration;
}
