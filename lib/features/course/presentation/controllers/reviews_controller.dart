part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Reviews extends _$Reviews with PaginationController<Review> {
  late GetReviews _getReviews;
  late AddReview _addReview;

  @override
  Future<List<Review>> build(String courseId, String? lectureId) async {
    final repository = await ref.watch(courseRepositoryProvider.future);
    paginatedParams = ReviewsParams(
      courseId: courseId,
      lectureId: lectureId,
    );
    _getReviews = GetReviews(repository);
    _addReview = AddReview(repository);
    return loadData();
  }

  @override
  FutureOr<List<Review>> loadData() async {
    return _getReviews(paginatedParams as ReviewsParams);
  }

  Future<Review> addReview(double rating, String? text) {
    return _addReview(
      ReviewsParams(
        courseId: courseId,
        lectureId: lectureId,
        rating: rating,
        text: text,
      ),
    );
  }
}
