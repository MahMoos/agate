import '../../../../common/api/api.dart';
import '../../../../core/models/models.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/course_repository.dart';
import '../data_sources/course_data_source.dart';
import '../models/models.dart';

class AgateCourseRepository extends BaseRepository implements CourseRepository {
  const AgateCourseRepository({required this.remote})
      : super(remoteDataSource: remote);
  final CourseDataSource remote;

  @override
  Future<CourseDetails> getCourse(String idOrSlug) async {
    return (await remote.getCourse(idOrSlug)).toEntity();
  }

  @override
  Future<Lecture> getLecture(String lectureId) async {
    return (await remote.getLecture(lectureId)).toEntity();
  }

  @override
  Future<List<Lecture>> getLectures(LecturesParams params) async {
    return (await remote.getLectures(params)).map((e) => e.toEntity()).toList();
  }

  @override
  Future<Section> getSection(String sectionId) async {
    return (await remote.getSection(sectionId)).toEntity();
  }

  @override
  Future<List<Section>> getSections(SectionsParams params) async {
    return (await remote.getSections(params)).map((e) => e.toEntity()).toList();
  }
}
