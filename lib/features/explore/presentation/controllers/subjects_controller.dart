part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Subjects extends _$Subjects with PaginationController<Subject> {
  late PaginatedParams _paginatedParams;
  late ExploreRepository _repo;

  @override
  Future<List<Subject>> build() async {
    _repo = await ref.watch(exploreRepositoryProvider.future);
    _paginatedParams = const PaginatedParams();
    return loadData();
  }

  @override
  FutureOr<List<Subject>> loadData() async {
    return GetSubjects(_repo).call(_paginatedParams);
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
