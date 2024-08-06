part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Teachers extends _$Teachers with PaginationController<Teacher> {
  late GetTeachers _getTeachers;

  @override
  Future<List<Teacher>> build() async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    paginatedParams = const PaginatedParams();
    _getTeachers = GetTeachers(repository);
    return loadData();
  }

  @override
  FutureOr<List<Teacher>> loadData() async {
    return _getTeachers(paginatedParams);
  }
}

@riverpod
Future<Teacher> teacher(TeacherRef ref, String id) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  final teacher = ref
      .watch(teachersProvider.notifier)
      .data
      ?.firstWhereOrNull((teacher) => teacher.id == id);
  return teacher != null ? Future.value(teacher) : GetTeacher(repo).call(id);
}
