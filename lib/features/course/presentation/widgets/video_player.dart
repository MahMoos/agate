part of 'widgets.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({
    required this.videoUrl,
    this.imageUrl,
    this.completedDuration,
    super.key,
  });

  final String videoUrl;
  final String? imageUrl;
  final Duration? completedDuration;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );
    // chewieController = initializeController();
    super.initState();
  }

  Future<ChewieController> get initializeController async {
    await videoPlayerController.initialize();
    return ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      placeholder: LectureImage(imageUrl: widget.imageUrl),
      allowedScreenSleep: false,
      autoInitialize: true,
      startAt: widget.completedDuration,
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: FutureBuilder(
        future: initializeController,
        builder: (context, snapshot) => switch (snapshot) {
          (final AsyncSnapshot<ChewieController> snapshot)
              when snapshot.hasData =>
            Builder(
              builder: (context) {
                chewieController = snapshot.data!;
                return Chewie(controller: chewieController);
              },
            ),
          (final AsyncSnapshot<ChewieController> snapshot)
              when !snapshot.hasError =>
            Stack(
              children: [
                LectureImage(imageUrl: widget.imageUrl, width: context.width),
                Expanded(child: Container(color: Colors.black54)),
                const StatusView.loading(),
              ],
            ),
          (_) => Center(child: Text(context.strings.errorOccurred)),
        },
      ),
    );
  }
}
