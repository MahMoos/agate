part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Subjects extends _$Subjects with PaginationController<Subject> {
  late GetSubjects _getSubjects;

  @override
  Future<List<Subject>> build(SubjectsParams params) async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    paginatedParams = params;
    _getSubjects = GetSubjects(repository);
    return loadData();
  }

  @override
  FutureOr<List<Subject>> loadData() async {
    return _getSubjects(paginatedParams as SubjectsParams);
  }
}

@Riverpod(keepAlive: true)
class SubjectController extends _$SubjectController {
  late GetSubject _getSubject;
  late SubscribeToSubject _subscribeToSubject;

  @override
  Future<Subject> build(String id) async {
    final repository = await ref.read(exploreRepositoryProvider.future);
    _getSubject = GetSubject(repository);
    _subscribeToSubject = SubscribeToSubject(repository);
    final subject = ref
        .watch(subjectsProvider(const SubjectsParams()).notifier)
        .data
        ?.firstWhereOrNull((Subject subject) => subject.id == id);
    return subject != null ? Future.value(subject) : _getSubject(id);
  }

  Future<bool> subscribe() async {
    final result = await _subscribeToSubject(id);
    if (result) {
      ref
        ..invalidateSelf()
        ..invalidate(subjectsProvider);
    }
    return result;
  }
}
