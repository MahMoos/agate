part of 'pages.dart';

class SectionsPage extends ConsumerWidget {
  const SectionsPage({
    required this.courseId,
    super.key,
  });

  final String courseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EndlessAnimatedListView(
      provider: sectionsProvider(courseId),
      sliverAppBar: SliverAppBar(
        title: ref.watch(courseControllerProvider(courseId)).when(
              data: (course) => Text(course.name),
              error: (_, __) => const Text('...'),
              loading: () => const Text('...'),
            ),
      ),
      builder: (context, section) => SectionTile(section: section),
    );
  }
}
