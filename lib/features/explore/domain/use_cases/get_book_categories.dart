part of 'use_cases.dart';

class GetBookCategories with UseCase<List<Subject>, PaginatedParams> {
  const GetBookCategories(this.repository);

  final ExploreRepository repository;

  @override
  Future<List<Subject>> call(PaginatedParams params) {
    return repository.getBookCategories(params);
  }
}
