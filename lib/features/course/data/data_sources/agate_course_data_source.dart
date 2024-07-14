import '../../../../common/api/api.dart';
import '../../domain/entities/entities.dart';
import '../models/models.dart';
import 'course_data_source.dart';

class AgateCourseDataSource extends CourseDataSource {
  const AgateCourseDataSource(super.client);

  @override
  Future<CourseDetailsModel> getCourse(String idOrSlug) {
    return client.get<CourseDetailsModel>(
      ApiRoutes.course(idOrSlug),
      parser: (json) =>
          CourseDetailsModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<LectureModel> getLecture(String lectureId) {
    return client.get<LectureModel>(
      ApiRoutes.lecture(lectureId),
      parser: (json) => LectureModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<LectureModel>> getLectures(LecturesParams params) {
    return client.getList<LectureModel>(
      ApiRoutes.lectures(params),
      parser: (json) => LectureModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<SectionModel> getSection(String sectionId) {
    return client.get<SectionModel>(
      ApiRoutes.section(sectionId),
      parser: (json) => SectionModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<SectionModel>> getSections(SectionsParams params) {
    return client.getList<SectionModel>(
      ApiRoutes.sections(params),
      parser: (json) => SectionModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<bool> subscribeToCourse(String courseId) {
    return client.post<bool>(
      ApiRoutes.subscribeToCourse(courseId),
      data: null,
      parser: (data) => true,
    );
  }

  @override
  Future<bool> subscribeToLecture({
    required String courseId,
    required String lectureId,
  }) {
    return client.post<bool>(
      ApiRoutes.subscribeToLecture(courseId: courseId, lectureId: lectureId),
      data: null,
      parser: (data) => true,
    );
  }

  @override
  Future<ReviewModel> addReview(ReviewsParams review) {
    return client.post<ReviewModel>(
      ApiRoutes.reviews(courseId: review.courseId, lectureId: review.lectureId),
      data: {
        'rate': review.rating,
        'text': review.text,
      },
      parser: (json) => ReviewModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<List<ReviewModel>> getReviews(ReviewsParams params) {
    return client.getList<ReviewModel>(
      ApiRoutes.reviews(courseId: params.courseId, lectureId: params.lectureId),
      parser: (json) => ReviewModel.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<bool> watchLecture({
    required String courseId,
    required String lectureId,
    required Duration progress,
    required Duration duration,
  }) {
    return client.post<bool>(
      ApiRoutes.watchLecture(courseId: courseId, lectureId: lectureId),
      data: {
        'duration': duration.inSeconds,
        'progress': progress.inSeconds,
      },
      parser: (data) => true,
    );
  }
}
