part of 'entities.dart';

class LectureParams {
  const LectureParams({
    required this.lectureId,
    required this.courseId,
    this.progress,
    this.duration,
  });

  final String lectureId;
  final String courseId;
  final Duration? progress;
  final Duration? duration;
}
