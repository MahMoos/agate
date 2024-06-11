part of 'use_cases.dart';

class WatchLecture with UseCase<bool, LectureParams> {
  const WatchLecture(this.repository);

  final CourseRepository repository;

  @override
  Future<bool> call(LectureParams params) {
    return repository.watchLecture(
      courseId: params.courseId,
      lectureId: params.lectureId,
      duration: params.completedDuration!,
    );
  }
}
