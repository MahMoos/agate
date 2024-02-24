part of 'widgets.dart';

class MyCourseCard extends StatelessWidget {
  const MyCourseCard({
    required this.myCourse,
    super.key,
  });

  final MyCourse myCourse;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseImage(
                imageUrl: myCourse.imageUrl,
                courseId: myCourse.id,
              ),
              Text(
                myCourse.name,
                style: context.textTheme.bodyLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).paddingSymmetric(horizontal: 8, vertical: 4),
              if (myCourse.teachers != null && myCourse.teachers!.isNotEmpty)
                Text(
                  myCourse.teachers!.first.name!,
                  style: context.textTheme.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).paddingSymmetric(horizontal: 8),
              // const Spacer(),
              if (myCourse.totalLectures != 0)
                LinearProgressIndicator(
                  value: myCourse.completedLectures / myCourse.totalLectures,
                ).paddingSymmetric(horizontal: 8, vertical: 4),
              if (myCourse.totalLectures != 0)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${myCourse.completedLectures}/${myCourse.totalLectures}',
                      style: context.textTheme.bodyLarge,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      child: Text(
                        context.strings.resume,
                        style: TextStyle(
                          color: context.theme.colorScheme.primary,
                        ),
                      ).paddingSymmetric(vertical: 3, horizontal: 8),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 8, vertical: 4),
            ],
          ),
        ),
      ),
    );
  }
}
