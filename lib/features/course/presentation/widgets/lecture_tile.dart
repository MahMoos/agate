part of 'widgets.dart';

class LectureTile extends StatelessWidget {
  const LectureTile({
    required this.courseId,
    required this.lecture,
    super.key,
  });

  final String courseId;
  final Lecture lecture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(
          lecture.title,
          style: context.textTheme.displaySmall,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ).withHero(
          '${lecture.id}-name',
        ),
        subtitle: lecture.isSubscribed && lecture.duration?.inSeconds != 0
            ? LinearProgressIndicator(
                value: (lecture.completedDuration?.inSeconds ?? 0) /
                    (lecture.duration?.inSeconds ?? 1),
              )
            : Text(
                lecture.description ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: context.dividerColor),
        ),
        leading: lecture.videoUrl != null
            ? LectureImage(
                imageUrl: lecture.imageUrl,
                duration: lecture.duration,
              )
            : null,
        horizontalTitleGap: 4,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        titleAlignment: ListTileTitleAlignment.top,
        onTap: () {
          context.push(
            '/courses/$courseId/sections/${lecture.sectionId}/lectures/${lecture.id}',
          );
        },
      ),
    );
  }
}
