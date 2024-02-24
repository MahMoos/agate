part of 'controllers.dart';

@riverpod
Future<Lecture> lecture(LectureRef ref, String id) async {
  return GetLecture(
    AgateCourseRepository(
      remote: AgateCourseDataSource(ref.watch(httpServiceProvider)),
    ),
  ).call(id);
}
