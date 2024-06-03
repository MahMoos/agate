part of 'controllers.dart';

@Riverpod(keepAlive: true)
Future<Section> section(SectionRef ref, String id) async {
  final getSection =
      GetSection(await ref.watch(courseRepositoryProvider.future));
  return getSection(id);
}

@Riverpod(keepAlive: true)
class Sections extends _$Sections with PaginationController<Section> {
  late GetSections _getSections;

  @override
  Future<List<Section>> build(String courseId) async {
    _getSections =
        GetSections(await ref.watch(courseRepositoryProvider.future));
    paginatedParams = SectionsParams(courseId: courseId);
    return loadData();
  }

  @override
  FutureOr<List<Section>> loadData() async {
    return _getSections(paginatedParams as SectionsParams);
  }
}
