part of 'controllers.dart';

@Riverpod(keepAlive: true)
class LectureController extends _$LectureController {
  late GetLecture _getLecture;
  late SubscribeToLecture _subscribeToLecture;
  late WatchLecture _watchLecture;

  late String _courseId;

  @override
  Future<Lecture> build(String id, String courseId) async {
    final repository = await ref.read(courseRepositoryProvider.future);
    _getLecture = GetLecture(repository);
    _subscribeToLecture = SubscribeToLecture(repository);
    _watchLecture = WatchLecture(repository);
    _courseId = courseId;
    return _getLecture(id);
  }

  Future<bool> subscribe() async {
    final result = await _subscribeToLecture(
      LectureParams(lectureId: id, courseId: _courseId),
    );
    if (result) {
      ref.invalidate(lectureControllerProvider(id, _courseId));
    }
    return result;
  }

  Future<bool> watch(Duration duration, Duration progress) async {
    final result = await _watchLecture(
      LectureParams(
        lectureId: id,
        courseId: _courseId,
        progress: progress,
        duration: duration,
      ),
    );
    return result;
  }
}

@Riverpod(keepAlive: true)
class Lectures extends _$Lectures with PaginationController<Lecture> {
  late GetLectures _getLectures;

  @override
  Future<List<Lecture>> build(String courseId) async {
    _getLectures =
        GetLectures(await ref.watch(courseRepositoryProvider.future));
    paginatedParams = LecturesParams(courseId: courseId);
    return loadData();
  }

  @override
  FutureOr<List<Lecture>> loadData() async {
    return _getLectures(paginatedParams as LecturesParams);
  }
}
