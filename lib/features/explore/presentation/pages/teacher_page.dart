part of 'pages.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage(
    this.id, {
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return ref.watch(teacherProvider(id)).when(
              data: (teacher) => Scaffold(
                appBar: AppBar(
                  title: Text(teacher.name ?? ''),
                ),
                body: EndlessAnimatedListView(
                  provider: coursesProvider(
                    CoursesParams(teacherIds: [teacher.id!]),
                  ),
                  itemBuilder: (context, course) => CourseCard(
                    details: course,
                  ).paddingSymmetric(horizontal: 12, vertical: 4),
                ),
              ),
              error: (err, stack) => StatusView.anErrorOccurred(
                action: () => ref.refresh(teacherProvider(id).future),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
            );
      },
    );
  }
}
