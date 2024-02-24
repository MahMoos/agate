part of 'widgets.dart';

class LectureTile extends StatelessWidget {
  const LectureTile({required this.lecture, super.key});

  final Lecture lecture;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        lecture.title,
        style: context.textTheme.displaySmall,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ).withHero(
        '${lecture.id}-name',
      ),
      // subtitle: Text(lecture.description ?? ""),
      leading: LectureImage(
        imageUrl: lecture.imageUrl,
        duration: lecture.duration,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      titleAlignment: ListTileTitleAlignment.top,
      onTap: () {
        context.push('/courses/${lecture.courseId}/lectures/${lecture.id}');
      },
    );
  }
}
