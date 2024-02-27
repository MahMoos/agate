part of 'use_cases.dart';

class SubscribeToLecture with UseCase<bool, List<String>> {
  const SubscribeToLecture(this.repository);

  final CourseRepository repository;

  @override
  Future<bool> call(List<String> params) {
    return repository.subscribeToLecture(
      courseId: params[0],
      lectureId: params[1],
    );
  }
}
