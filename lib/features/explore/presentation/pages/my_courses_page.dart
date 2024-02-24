part of 'pages.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EndlessAnimatedListView(
      provider: myCoursesProvider,
      sliverAppBar: const SearchAppBar(),
      builder: (context, course) {
        return MyCourseCard(
          myCourse: course,
        ).paddingSymmetric(horizontal: 12, vertical: 4);
      },
    );
  }
}
