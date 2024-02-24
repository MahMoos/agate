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
}
