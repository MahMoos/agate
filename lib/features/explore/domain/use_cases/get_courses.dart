part of 'use_cases.dart';

class GetCourses with UseCase<List<Course>, CoursesParams> {
  const GetCourses(this.repository);
  final ExploreRepository repository;

  @override
  Future<List<Course>> call(CoursesParams params) {
    return repository.getCourses(params);
  }
}
