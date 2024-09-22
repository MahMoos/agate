part of 'pages.dart';

class CoursePage extends ConsumerWidget {
  const CoursePage({required this.courseId, super.key});

  final String courseId;
  static const _imageHeight = 246.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(courseControllerProvider(courseId)).when(
            data: (course) => CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: _imageHeight,
                  // title: Text(course.name),
                  floating: true,
                  pinned: true,
                  centerTitle: false,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Text(
                      course.name,
                      textAlign: TextAlign.start,
                      style: context.displayMedium?.dropShadow(),
                    ).withHero('${course.id}-name'),
                    background: CourseImage(
                      courseId: course.id,
                      imageUrl: course.imageUrl,
                      height: _imageHeight,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      if (course.teachers != null &&
                          course.teachers!.isNotEmpty)
                        ...course.teachers!.map(
                          (teacher) => UserTile(
                            name: teacher.name!,
                            photoUrl: teacher.photoUrl,
                            bio: teacher.specialization,
                          ).paddingSymmetric(horizontal: 8, vertical: 4),
                        ),
                      if (!course.isSubscribed || course.price == 0)
                        SubscriptionTile(
                          price: course.price,
                          currency: course.currency,
                          discount: course.discount,
                          onSubscribed: () {
                            context.showSnackBar(
                              const SnackBar(
                                content: LinearProgressIndicator(),
                              ),
                            );
                            ref
                                .read(
                                  courseControllerProvider(courseId).notifier,
                                )
                                .subscribe()
                                .then((result) {
                              if (result) {
                                context.showSnackBarMessage(
                                  context.strings.subscriptionSuccessful,
                                );
                                ref.invalidate(
                                  courseControllerProvider(courseId),
                                );
                              }
                            }).catchError(handleSubscriptionException);
                          },
                        ),
                      InteractionsTile(
                        rating: course.rating,
                        participants: course.participants,
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return ReviewsBottomSheet(
                                isSubscribed: course.isSubscribed,
                                courseId: course.id,
                              );
                            },
                          );
                        },
                      ),
                      if (course.description != null &&
                          course.description!.isNotEmpty)
                        DescriptionParagraph(description: course.description!),
                      const Divider(),
                      SectionTitle(
                        title: context.strings.lectures,
                        onPressed: () =>
                            context.push('/courses/${course.id}/lectures'),
                      ),
                      if (course.lectures == null)
                        const StatusView(
                          illustration: UnDrawIllustration.blank_canvas,
                        ),
                      if (course.lectures != null)
                        ...course.lectures!.map(
                          (lecture) => LectureTile(
                            lecture: lecture,
                            courseId: courseId,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            error: (err, stack) => StatusView.anErrorOccurred(
              action: () =>
                  ref.refresh(courseControllerProvider(courseId).future),
            ),
            loading: () => const StatusView.loading(),
          ),
    );
  }
}
