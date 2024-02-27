part of 'widgets.dart';

class LectureImage extends StatelessWidget {
  const LectureImage({super.key, this.imageUrl, this.width, this.duration});

  final String? imageUrl;
  final double? width;
  final Duration? duration;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        children: [
          if (imageUrl != null)
            Hero(
              tag: imageUrl!,
              child: CachedNetworkImage(
                imageUrl: imageUrl!,
                width: width,
                fit: BoxFit.cover,
                placeholder: (context, url) => SizedBox(
                  width: width,
                ),
              ),
            ),
          if (imageUrl == null)
            Container(
              color: context.theme.disabledColor.withAlpha(200),
            ),
          if (duration != null)
            PositionedDirectional(
              end: 4,
              bottom: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 16,
                child: Text(
                  duration!.format(),
                  style: context.textTheme.labelSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
