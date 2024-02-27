part of 'use_cases.dart';

class GetLectures with UseCase<List<Lecture>, LecturesParams> {
  const GetLectures(this.repository);

  final CourseRepository repository;

  @override
  Future<List<Lecture>> call(LecturesParams params) {
    return repository.getLectures(params);
  }
}
