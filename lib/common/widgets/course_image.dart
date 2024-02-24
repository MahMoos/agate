part of 'widgets.dart';

class CourseImage extends StatelessWidget {
  const CourseImage({
    required this.courseId,
    super.key,
    this.imageUrl,
    this.height = 134.0,
  });

  final String? imageUrl;
  final String courseId;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: courseId,
      child: ColorFiltered(
        colorFilter: imageUrl != null
            ? const ColorFilter.mode(Colors.transparent, BlendMode.overlay)
            : ColorFilter.mode(Colors.grey.shade300, BlendMode.srcIn),
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? 'https://i.imgur.com/NOM85VI.png',
          fit: imageUrl != null ? BoxFit.cover : BoxFit.contain,
          height: height,
          width: double.infinity,
        ),
      ),
    );
  }
}
