part of 'controllers.dart';

@Riverpod(keepAlive: true)
class CourseController extends _$CourseController {
  Future<CourseDetails> _getCourse(String id) async {
    return GetCourse(
      AgateCourseRepository(
        remote: AgateCourseDataSource(ref.watch(httpServiceProvider)),
      ),
    ).call(id);
  }

  @override
  Future<CourseDetails> build(String id) async {
    return _getCourse(id);
  }
}
