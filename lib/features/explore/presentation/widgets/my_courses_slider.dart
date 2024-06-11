part of 'widgets.dart';

class MyCoursesSlider extends StatelessWidget {
  const MyCoursesSlider({
    required this.myCourses,
    super.key,
  });

  final List<MyCourse> myCourses;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: myCourses.map((e) => MyCourseCard(myCourse: e)).toList(),
      ).paddingSymmetric(horizontal: 8),
    );
  }
}
