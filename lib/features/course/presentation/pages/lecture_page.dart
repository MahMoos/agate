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
                            () => lectureController.watch(
                              lecture.duration!,
                              completedDuration!,
                            ),
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
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return ReviewsBottomSheet(
                            isSubscribed: lecture.isSubscribed,
                            courseId: widget.courseId,
                            lectureId: lecture.id,
                          );
                        },
                      );
                    },
                  ),
                  if (lecture.description != null)
                    Text(lecture.description!).paddingAll(16),
                  if (lecture.isSubscribed &&
                      lecture.mcqGames != null &&
                      lecture.mcqGames!.isNotEmpty)
                    NavigationTile(
                      title: context.strings.mcqs,
                      subtitle: lecture.mcqGames!.length.toString(),
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return Scaffold(
                              appBar: AppBar(
                                title: Text(context.strings.mcqs),
                              ),
                              body: ListView(
                                children: lecture.mcqGames!
                                    .map(
                                      (mcqGame) => McqView(
                                        mcq: mcqGame,
                                      ).paddingSymmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                    )
                                    .toList(),
                              ),
                            ).paddingLTRB(0, 48, 0, 0);
                          },
                        );
                      },
                    ),
                  if (lecture.isSubscribed &&
                      lecture.files != null &&
                      lecture.files!.isNotEmpty)
                    NavigationTile(
                      title: context.strings.files,
                      subtitle: lecture.files!.length.toString(),
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return Scaffold(
                              appBar: AppBar(
                                title: Text(context.strings.files),
                              ),
                              body: ListView(
                                children: lecture.files!
                                    .map(
                                      (file) => FileTile(
                                        file: file,
                                      ).paddingSymmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                    )
                                    .toList(),
                              ),
                            ).paddingLTRB(0, 48, 0, 0);
                          },
                        );
                      },
                    ),
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
