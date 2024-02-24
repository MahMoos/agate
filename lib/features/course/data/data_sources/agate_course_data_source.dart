import '../../../../common/api/api.dart';
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
}
