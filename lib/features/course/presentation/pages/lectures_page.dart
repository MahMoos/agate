part of 'pages.dart';

class LecturesPage extends ConsumerWidget {
  const LecturesPage({
    required this.courseId,
    super.key,
  });

  final String courseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EndlessAnimatedListView(
      provider: lecturesProvider(courseId),
      sliverAppBar: SliverAppBar(
        title: ref.watch(courseControllerProvider(courseId)).when(
              data: (course) => Text(course.name),
              error: (_, __) => const Text('...'),
              loading: () => const Text('...'),
            ),
      ),
      itemBuilder: (context, lecture) => LectureTile(
        lecture: lecture,
        courseId: courseId,
      ),
    );
  }
}
