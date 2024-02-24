import '../../../../common/api/api.dart';
import '../entities/entities.dart';

abstract class CourseRepository {
  Future<CourseDetails> getCourse(String idOrSlug);
  Future<List<Section>> getSections(SectionsParams params);
  Future<Section> getSection(String sectionId);
  Future<List<Lecture>> getLectures(LecturesParams params);
  Future<Lecture> getLecture(String lectureId);
}
