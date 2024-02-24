part of 'use_cases.dart';

class GetDepartment with UseCase<Department, String> {
  const GetDepartment(this.repository);

  final ExploreRepository repository;

  @override
  Future<Department> call(String params) {
    return repository.getDepartment(params);
  }
}
