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

@riverpod
Future<Subject> subject(SubjectRef ref, String id) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  final subject = ref
      .watch(subjectsProvider(const SubjectsParams()).notifier)
      .data
      ?.firstWhereOrNull((subject) => subject.id == id);
  return subject != null ? Future.value(subject) : GetSubject(repo).call(id);
}
