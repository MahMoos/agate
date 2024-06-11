part of 'use_cases.dart';

class GetSubjects with UseCase<List<Subject>, SubjectsParams> {
  const GetSubjects(this.repository);

  final ExploreRepository repository;

  @override
  Future<List<Subject>> call(SubjectsParams params) {
    return repository.getSubjects(params);
  }
}
