part of 'use_cases.dart';

class AddReview with UseCase<Review, ReviewsParams> {
  const AddReview(this.repository);
  final CourseRepository repository;

  @override
  Future<Review> call(ReviewsParams params) {
    return repository.addReview(params);
  }
}
