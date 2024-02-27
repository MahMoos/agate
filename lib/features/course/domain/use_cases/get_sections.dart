part of 'use_cases.dart';

class GetSections with UseCase<List<Section>, SectionsParams> {
  const GetSections(this.repository);

  final CourseRepository repository;

  @override
  Future<List<Section>> call(SectionsParams params) {
    return repository.getSections(params);
  }
}
