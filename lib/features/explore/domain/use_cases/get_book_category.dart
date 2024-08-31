part of 'use_cases.dart';

class GetBookCategory with UseCase<Subject, String> {
  const GetBookCategory(this.repository);

  final ExploreRepository repository;

  @override
  Future<Subject> call(String params) {
    return repository.getBookCategory(params);
  }
}
