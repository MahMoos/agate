part of 'use_cases.dart';

class SubscribeToLecture with UseCase<bool, LectureParams> {
  const SubscribeToLecture(this.repository);

  final CourseRepository repository;

  @override
  Future<bool> call(LectureParams params) {
    return repository.subscribeToLecture(
      courseId: params.courseId,
      lectureId: params.lectureId,
    );
  }
}
