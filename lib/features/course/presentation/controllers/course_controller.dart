part of 'controllers.dart';

@Riverpod(keepAlive: true)
class CourseController extends _$CourseController {
  late GetCourse _getCourse;
  late SubscribeToCourse _subscribeToCourse;

  @override
  Future<CourseDetails> build(String id) async {
    final repository = await ref.read(courseRepositoryProvider.future);
    _getCourse = GetCourse(repository);
    _subscribeToCourse = SubscribeToCourse(repository);
    return _getCourse(id);
  }

  Future<bool> subscribe() async {
    return _subscribeToCourse(id);
  }
}
