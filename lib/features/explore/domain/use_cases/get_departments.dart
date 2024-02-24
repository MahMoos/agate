part of 'use_cases.dart';

class GetDepartments with UseCase<List<Department>, PaginatedParams> {
  const GetDepartments(this.repository);

  final ExploreRepository repository;

  @override
  Future<List<Department>> call(PaginatedParams params) {
    return repository.getDepartments(params);
  }
}
