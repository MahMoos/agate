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
        children: [
          const SizedBox(width: 8),
          ...myCourses.map(
            (e) => MyCourseCard(
              myCourse: e,
            ),
          ),
          // TODO(MahMoos): get rid of this.
          if (myCourses.length == 1) SizedBox(width: context.width - 304),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
