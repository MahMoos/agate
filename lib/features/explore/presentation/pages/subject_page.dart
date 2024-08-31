part of 'pages.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage({
    required this.subjectId,
    this.departmentId,
    super.key,
  });

  final String subjectId;
  final String? departmentId;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final subject = ref.watch(subjectProvider(subjectId));
        return subject.when(
          data: (subject) => Scaffold(
            appBar: AppBar(
              title: Text(subject.name),
            ),
            body: EndlessAnimatedListView(
              provider: coursesProvider(
                CoursesParams(
                  subjectIds: [subjectId],
                  divisionIds: departmentId != null ? [departmentId!] : null,
                ),
              ),
              itemBuilder: (context, course) => CourseCard(
                details: course,
              ).paddingSymmetric(horizontal: 12, vertical: 4),
            ),
          ),
          error: (err, stack) => StatusView.anErrorOccurred(
            action: () => ref.refresh(subjectProvider(subjectId).future),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
