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
  ConsumerState<LecturePage> createState() => LecturePageState();
}

class LecturePageState extends ConsumerState<LecturePage> {
  Duration? completedDuration;

  @override
  Widget build(BuildContext context) {
    final lectureController = ref.read(
      lectureControllerProvider(widget.lectureId, widget.courseId).notifier,
    );
    return ref
        .watch(lectureControllerProvider(widget.lectureId, widget.courseId))
        .when(
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
                      onProgress: (duration) {
                        completedDuration = duration;
                        try {
                          EasyThrottle.throttle(
                            'watch_lecture:${lecture.id}',
                            const Duration(seconds: 10),
                            () => lectureController.watch(duration),
                          );
                        } on Exception catch (e) {
                          debugPrint(e.toString());
                        }
                      },
                    )
                  else if (lecture.videoUrl != null)
                    LectureImage(
                      imageUrl: lecture.imageUrl,
                      width: context.width,
                    ),
                  if (!lecture.isSubscribed)
                    SubscriptionTile(
                      price: lecture.price,
                      currency: lecture.currency,
                      discount: lecture.discount,
                      onSubscribed: () {
                        context.showSnackBar(
                          const SnackBar(content: LinearProgressIndicator()),
                        );
                        lectureController
                            .subscribe()
                            .then(
                              (result) => context.showSnackBarMessage(
                                context.strings.subscriptionSuccessful,
                              ),
                            )
                            .catchError(handleSubscriptionException);
                      },
                    )
                  else
                    const SizedBox(height: 16),
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
              action: () => ref.refresh(
                lectureControllerProvider(widget.lectureId, widget.courseId)
                    .future,
              ),
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
