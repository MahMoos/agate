part of 'use_cases.dart';

class GetCourse with UseCase<CourseDetails, String> {
  const GetCourse(this.repository);
  final CourseRepository repository;

  @override
  Future<CourseDetails> call(String params) {
    return repository.getCourse(params);
  }
}
