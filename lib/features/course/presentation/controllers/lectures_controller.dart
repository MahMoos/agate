part of 'controllers.dart';

@Riverpod(keepAlive: true)
class LectureController extends _$LectureController {
  late GetLecture _getLecture;
  late SubscribeToLecture _subscribeToLecture;
  late WatchLecture _watchLecture;

  @override
  Future<Lecture> build(String id) async {
    _getLecture = GetLecture(ref.watch(courseRepositoryProvider));
    _subscribeToLecture = SubscribeToLecture(
      ref.watch(courseRepositoryProvider),
    );
    _watchLecture = WatchLecture(
      ref.watch(courseRepositoryProvider),
    );
    return _getLecture(id);
  }

  Future<bool> subscribe(String courseId) async {
    final result = await _subscribeToLecture([courseId, id]);
    if (result) {
      ref.invalidate(lectureControllerProvider(id));
    }
    return result;
  }

  // TODO(MahMoos): add duration to watchLecture
  Future<bool> watch(String courseId) async {
    final result = await _watchLecture([courseId, id]);
    return result;
  }
}

@Riverpod(keepAlive: true)
class Lectures extends _$Lectures with PaginationController<Lecture> {
  late GetLectures _getLectures;
  late LecturesParams _paginatedParams;

  @override
  Future<List<Lecture>> build({
    required String courseId,
    required String sectionId,
  }) async {
    _getLectures = GetLectures(ref.watch(courseRepositoryProvider));
    _paginatedParams = LecturesParams(courseId: courseId, sectionId: sectionId);
    return loadData();
  }

  @override
  FutureOr<List<Lecture>> loadData() async {
    return _getLectures(_paginatedParams);
  }
}
