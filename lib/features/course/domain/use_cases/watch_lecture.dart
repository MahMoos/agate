part of 'use_cases.dart';

class WatchLecture with UseCase<bool, List<String>> {
  const WatchLecture(this.repository);

  final CourseRepository repository;

  @override
  Future<bool> call(List<String> params) {
    return repository.watchLecture(
      courseId: params[0],
      lectureId: params[1],
    );
  }
}
