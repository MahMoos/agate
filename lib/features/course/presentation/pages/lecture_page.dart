part of 'pages.dart';

class LecturePage extends ConsumerStatefulWidget {
  const LecturePage({
    required this.courseId,
    required this.sectionId,
    required this.lectureId,
    super.key,
  });

  final String courseId;
  final String sectionId;
  final String lectureId;

  @override
  ConsumerState<LecturePage> createState() => _LectureViewState();
}

class _LectureViewState extends ConsumerState<LecturePage> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(lectureControllerProvider(widget.lectureId)).when(
          data: (lecture) {
            return Scaffold(
              appBar: AppBar(
                title: Text(lecture.title),
              ),
              body: ListView(
                children: [
                  if (lecture.isSubscribed && lecture.videoUrl != null)
                    VideoPlayer(
                      videoUrl: lecture.videoUrl!,
                      imageUrl: lecture.imageUrl,
                      completedDuration: lecture.completedDuration,
                    )
                  else
                    LectureImage(
                      imageUrl: lecture.imageUrl,
                      width: context.width,
                    ),
                  if (!lecture.isSubscribed)
                    SubscriptionTile(
                      price: lecture.price,
                      currency: lecture.currency,
                      discount: lecture.discount,
                      onSubscribed: () async {
                        context.showSnackBar(
                          const SnackBar(content: LinearProgressIndicator()),
                        );
                        try {
                          final result = await ref
                              .read(
                                lectureControllerProvider(widget.lectureId)
                                    .notifier,
                              )
                              .subscribe(widget.courseId);
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
                    rating: lecture.rating,
                    participants: lecture.participants,
                    onTap: () {},
                  ),
                  if (lecture.description != null)
                    Text(lecture.description!).paddingAll(16),
                ],
              ),
            );
          },
          error: (err, stack) => Scaffold(
            appBar: AppBar(
              title: const Text('...'),
            ),
            body: StatusView.anErrorOccurred(
              action: () => ref
                  .refresh(lectureControllerProvider(widget.lectureId).future),
            ),
          ),
          loading: () => Scaffold(
            appBar: AppBar(
              title: const Text('...'),
            ),
            body: const StatusView.loading(),
          ),
        );
  }
}
