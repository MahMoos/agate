part of 'use_cases.dart';

class GetTeacher with UseCase<Teacher, String> {
  const GetTeacher(this.repository);

  final ExploreRepository repository;

  @override
  Future<Teacher> call(String params) {
    return repository.getTeacher(params);
  }
}
