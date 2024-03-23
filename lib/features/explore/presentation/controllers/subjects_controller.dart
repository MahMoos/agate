part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Subjects extends _$Subjects with PaginationController<Subject> {
  late GetSubjects _getSubjects;

  @override
  Future<List<Subject>> build() async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    _getSubjects = GetSubjects(repository);
    return loadData();
  }

  @override
  FutureOr<List<Subject>> loadData() async {
    return _getSubjects(paginatedParams);
  }
}

@riverpod
Future<Subject> subject(SubjectRef ref, String id) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  final subject = ref
      .watch(subjectsProvider.notifier)
      .data
      ?.firstWhereOrNull((subject) => subject.id == id);
  return subject != null ? Future.value(subject) : GetSubject(repo).call(id);
}
