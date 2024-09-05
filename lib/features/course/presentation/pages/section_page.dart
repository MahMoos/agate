part of 'pages.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({
    required this.courseId,
    required this.sectionId,
    super.key,
  });

  final String courseId;
  final String sectionId;

  @override
  Widget build(BuildContext context) {
    return EndlessAnimatedListView(
      provider: lecturesProvider(
        courseId,
      ),
      sliverAppBar: SectionAppBar(sectionId: sectionId),
      itemBuilder: (context, lecture) =>
          LectureTile(courseId: courseId, lecture: lecture),
    );
  }
}
