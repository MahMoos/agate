part of 'use_cases.dart';

class GetTeachers with UseCase<List<Teacher>, PaginatedParams> {
  const GetTeachers(this.repository);

  final ExploreRepository repository;

  @override
  Future<List<Teacher>> call(PaginatedParams params) {
    return repository.getTeachers(params);
  }
}
