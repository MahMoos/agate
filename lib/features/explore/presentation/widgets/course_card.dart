part of 'widgets.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    required this.details,
    super.key,
  });

  final Course details;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        context.push('/courses/${details.id}');
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            if (details.teachers != null && details.teachers!.isNotEmpty)
              UserTile(
                name: details.teachers!.first.name!,
                bio: details.teachers!.first.specialization,
                photoUrl: details.teachers!.first.photoUrl,
              ),
            CourseImage(
              imageUrl: details.imageUrl,
              courseId: details.id,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  details.name,
                  style: context.textTheme.displayMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ).withHero(
                  '${details.id}-name',
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (details.rating != null)
                      RatingBarIndicator(
                        rating: details.rating!,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemSize: 20,
                      ),
                    const Spacer(),
                    if (details.participants != null)
                      const Icon(
                        Icons.people_alt_rounded,
                        color: Colors.grey,
                        size: 18,
                      ).paddingSymmetric(horizontal: 4),
                    if (details.participants != null)
                      Text(
                        context.formatIntCompact(details.participants!),
                        style: context.textTheme.bodySmall,
                      ),
                  ],
                ),
              ],
            ).paddingSymmetric(horizontal: 8, vertical: 8),
          ],
        ),
      ),
    );
  }
}
