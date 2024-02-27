part of 'pages.dart';

class CoursePage extends ConsumerStatefulWidget {
  const CoursePage({required this.courseId, super.key});

  final String courseId;

  @override
  ConsumerState<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends ConsumerState<CoursePage> {
  static const _imageHeight = 246.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ref.watch(courseControllerProvider(widget.courseId)).when(
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
                      SubscriptionTile(
                        price: course.price,
                        currency: course.currency,
                        discount: course.discount,
                        onSubscribed: () async {
                          context.showSnackBar(
                            const SnackBar(content: LinearProgressIndicator()),
                          );
                          try {
                            final result = await ref
                                .read(
                                  courseControllerProvider(widget.courseId)
                                      .notifier,
                                )
                                .subscribe();
                            if (mounted && result) {
                              context.showSnackBarMessage(
                                context.strings.subscriptionSuccessful,
                              );
                            }
                          } on Exception catch (e) {
                            if (mounted) {
                              handleSubscriptionException(context, e);
                            }
                          }
                        },
                      ),
                      InteractionsTile(
                        rating: course.rating,
                        participants: course.participants,
                        onTap: () {},
                      ),
                      if (course.description != null &&
                          course.description!.isNotEmpty)
                        DescriptionParagraph(description: course.description!),
                      const Divider(),
                      SectionTitle(
                        title: context.strings.sections,
                        onPressed: () =>
                            context.push('/courses/${course.id}/sections'),
                      ),
                      if (course.sections == null)
                        const StatusView(
                          illustration: UnDrawIllustration.blank_canvas,
                        ),
                      if (course.sections != null)
                        ...course.sections!.map(
                          (section) => SectionTile(section: section),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            error: (err, stack) => StatusView.anErrorOccurred(
              action: () =>
                  ref.refresh(courseControllerProvider(widget.courseId).future),
            ),
            loading: () => const StatusView.loading(),
          ),
    );
  }
}
