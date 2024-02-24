part of 'controllers.dart';

@riverpod
Future<Section> section(SectionRef ref, String id) async {
  return GetSection(
    AgateCourseRepository(
      remote: AgateCourseDataSource(ref.watch(httpServiceProvider)),
    ),
  ).call(id);
}
