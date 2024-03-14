part of 'use_cases.dart';

class GetSubject with UseCase<Subject, String> {
  const GetSubject(this.repository);

  final ExploreRepository repository;

  @override
  Future<Subject> call(String params) {
    return repository.getSubject(params);
  }
}
