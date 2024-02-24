part of 'pages.dart';

class LectureView extends ConsumerStatefulWidget {
  const LectureView({
    required this.courseId,
    required this.lectureId,
    super.key,
  });

  final String courseId;
  final String lectureId;

  @override
  ConsumerState<LectureView> createState() => _LectureViewState();
}

class _LectureViewState extends ConsumerState<LectureView> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  Lecture? cLecture;

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cLecture?.title ?? '...'),
      ),
      body: ref.watch(lectureProvider(widget.lectureId)).when(
            data: (lecture) {
              setState(() {
                cLecture = lecture;
              });
              videoPlayerController = VideoPlayerController.networkUrl(
                Uri.parse(lecture.videoUrl!),
              );
              if (lecture.videoUrl != null) {
                videoPlayerController.initialize().then((controller) {
                  setState(() {
                    chewieController = ChewieController(
                      videoPlayerController: videoPlayerController,
                      autoPlay: true,
                      placeholder: LectureImage(imageUrl: lecture.imageUrl),
                      allowedScreenSleep: false,
                    );
                  });
                });
              }
              return ListView(
                children: [
                  if (chewieController != null)
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Chewie(
                        controller: chewieController!,
                      ),
                    ),
                  if (lecture.description != null)
                    Text(lecture.description!).paddingAll(16),
                ],
              );
            },
            error: (err, stack) => StatusView.anErrorOccurred(
              action: () =>
                  ref.refresh(courseControllerProvider(widget.courseId).future),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
