part of 'use_cases.dart';

class GetSection with UseCase<Section, String> {
  const GetSection(this.repository);
  final CourseRepository repository;

  @override
  Future<Section> call(String params) {
    return repository.getSection(params);
  }
}
