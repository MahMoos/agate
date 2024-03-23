part of 'pages.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EndlessAnimatedListView(
      provider: coursesProvider(ref.watch(coursesParamsProvider)),
      sliverAppBar: const SearchAppBar(isInSearch: true),
      itemBuilder: (context, course) {
        return CourseCard(
          details: course,
        ).paddingSymmetric(horizontal: 12, vertical: 4);
      },
    );
  }
}
