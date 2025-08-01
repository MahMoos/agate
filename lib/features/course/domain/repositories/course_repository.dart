import '../../../../common/api/api.dart';
import '../entities/entities.dart';

abstract class CourseRepository {
  Future<CourseDetails> getCourse(String idOrSlug);

  Future<List<Section>> getSections(SectionsParams params);

  Future<Section> getSection(String sectionId);

  Future<List<Lecture>> getLectures(LecturesParams params);

  Future<Lecture> getLecture(String lectureId);

  Future<bool> subscribeToCourse(String courseId);

  Future<bool> subscribeToLecture({
    required String courseId,
    required String lectureId,
  });

  Future<Review> addReview(ReviewsParams review);

  Future<List<Review>> getReviews(ReviewsParams params);

  Future<bool> watchLecture({
    required String courseId,
    required String lectureId,
    required Duration progress,
    required Duration duration,
  });
}
