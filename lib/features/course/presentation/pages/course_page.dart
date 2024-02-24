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
                  floating: true, pinned: true,
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
                  delegate: SliverChildListDelegate(<Widget>[
                    if (course.teachers != null && course.teachers!.isNotEmpty)
                      UserTile(
                        name: course.teachers!.first.name!,
                        photoUrl: course.teachers!.first.photoUrl,
                        bio: course.teachers!.first.specialization,
                      ).paddingSymmetric(horizontal: 8, vertical: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (course.rating != null)
                          RatingBarIndicator(
                            rating: course.rating!,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemSize: 20,
                          ),
                        const SizedBox(width: 8),
                        if (course.participants != null) ...[
                          const Icon(
                            Icons.people_alt_rounded,
                            color: Colors.grey,
                            size: 18,
                          ).paddingSymmetric(horizontal: 4),
                          Text(
                            context.formatIntCompact(course.participants!),
                            style: context.textTheme.bodySmall,
                          ).paddingOnly(top: 4),
                        ],
                        const Spacer(),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.how_to_reg_rounded),
                          label: Text(
                            context.strings.subscribe,
                          ).paddingOnly(top: 4),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 16),
                    if (course.description != null)
                      ReadMoreText(
                        course.description!,
                        trimCollapsedText: context.strings.showMore,
                        trimExpandedText: '',
                        moreStyle: context.labelSmall!
                            .copyWith(color: context.theme.colorScheme.primary),
                      ).paddingAll(16),
                    const Divider(),
                    SectionTitle(title: context.strings.sections),
                    if (course.sections == null)
                      const StatusView(
                        illustration: UnDrawIllustration.blank_canvas,
                      ),
                    if (course.sections != null)
                      ...course.sections!
                          .map((section) => SectionTile(section: section)),
                    // if (course.sections != null)
                    //   ElevatedButton(
                    //       onPressed: () =>
                    //           context.push('/courses/${course.id}/sections/'),
                    //       child: Text(context.strings.viewAll))
                    //       .paddingSymmetric(horizontal: 16, vertical: 8)
                  ]),
                ),
              ],
            ),
            error: (err, stack) => StatusView.anErrorOccurred(
              action: () =>
                  ref.refresh(courseControllerProvider(widget.courseId).future),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
