part of 'controllers.dart';

@Riverpod(keepAlive: true)
Future<Section> section(SectionRef ref, String id) async {
  final getSection = GetSection(ref.watch(courseRepositoryProvider));
  return getSection(id);
}

@Riverpod(keepAlive: true)
class Sections extends _$Sections with PaginationController<Section> {
  late GetSections _getSections;
  late SectionsParams _paginatedParams;

  @override
  Future<List<Section>> build(String courseId) async {
    _getSections = GetSections(ref.watch(courseRepositoryProvider));
    _paginatedParams = SectionsParams(courseId: courseId);
    return loadData();
  }

  @override
  FutureOr<List<Section>> loadData() async {
    return _getSections(_paginatedParams);
  }
}
