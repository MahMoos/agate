part of 'use_cases.dart';

class GetMyCourses with UseCase<List<Course>, PaginatedParams> {
  const GetMyCourses(this.repository);
  final ExploreRepository repository;

  @override
  Future<List<MyCourse>> call(PaginatedParams params) {
    return repository.getMyCourses(params);
  }
}
