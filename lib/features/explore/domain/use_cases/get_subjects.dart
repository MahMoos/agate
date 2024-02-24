part of 'use_cases.dart';

class GetSubjects with UseCase<List<Subject>, PaginatedParams> {
  const GetSubjects(this.repository);

  final ExploreRepository repository;

  @override
  Future<List<Subject>> call(PaginatedParams params) {
    return repository.getSubjects(params);
  }
}
