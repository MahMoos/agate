part of 'use_cases.dart';

class GetReviews with UseCase<List<Review>, ReviewsParams> {
  const GetReviews(this.repository);
  final CourseRepository repository;

  @override
  Future<List<Review>> call(ReviewsParams params) {
    return repository.getReviews(params);
  }
}
