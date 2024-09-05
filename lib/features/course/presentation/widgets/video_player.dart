part of 'widgets.dart';

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({
    required this.videoUrl,
    required this.onProgress,
    this.imageUrl,
    this.completedDuration,
    super.key,
  });

  final String videoUrl;
  final String? imageUrl;
  final Duration? completedDuration;
  final void Function(Duration watchedDuration) onProgress;

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: FlickVideoPlayer(
        flickManager: flickManager,
        flickVideoWithControls: const FlickVideoWithControls(
          controls: FlickPortraitControls(iconSize: 32),
          watermark: BouncingUsername(),
        ),
        flickVideoWithControlsFullscreen: const Directionality(
          textDirection: TextDirection.ltr,
          child: FlickVideoWithControls(
            controls: FlickLandscapeControls(),
            watermark: BouncingUsername(isFullscreen: true),
          ),
        ),
      ),
    );
  }
}
