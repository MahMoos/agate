part of 'use_cases.dart';

class GetLecture with UseCase<Lecture, String> {
  const GetLecture(this.repository);
  final CourseRepository repository;

  @override
  Future<Lecture> call(String params) {
    return repository.getLecture(params);
  }
}
