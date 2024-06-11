import '../../../../common/api/api.dart';
import '../../../../core/models/models.dart';
import '../models/models.dart';

abstract class CourseDataSource extends RemoteDataSource {
  const CourseDataSource(super.client);

  Future<CourseDetailsModel> getCourse(String idOrSlug);

  Future<List<SectionModel>> getSections(SectionsParams params);

  Future<SectionModel> getSection(String sectionId);

  Future<List<LectureModel>> getLectures(LecturesParams params);

  Future<LectureModel> getLecture(String lectureId);

  Future<bool> subscribeToCourse(String courseId);

  Future<bool> subscribeToLecture({
    required String courseId,
    required String lectureId,
  });

  Future<bool> watchLecture({
    required String courseId,
    required String lectureId,
    required Duration duration,
  });
}
