part of 'controllers.dart';

@Riverpod(keepAlive: true)
class CourseController extends _$CourseController {
  late GetCourse _getCourse;
  late SubscribeToCourse _subscribeToCourse;

  @override
  Future<CourseDetails> build(String id) async {
    _getCourse = GetCourse(ref.watch(courseRepositoryProvider));
    _subscribeToCourse = SubscribeToCourse(ref.watch(courseRepositoryProvider));
    return _getCourse(id);
  }

  Future<bool> subscribe() async {
    final result = await _subscribeToCourse(id);
    if (result) {
      ref.invalidate(courseControllerProvider(id));
    }
    return result;
  }
}
