part of 'widgets.dart';

class AdSlide extends StatelessWidget {
  const AdSlide({
    this.imageUrl,
    super.key,
    this.url,
  });

  final String? imageUrl;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          if (url != null && url!.isNotEmpty) {
            final uri = Uri.tryParse(url!);
            uri != null && !url!.startsWith('/')
                ? launchUrl(uri)
                : context.push(url!);
          }
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ColorFiltered(
            colorFilter: imageUrl != null
                ? const ColorFilter.mode(Colors.transparent, BlendMode.overlay)
                : ColorFilter.mode(Colors.grey.shade300, BlendMode.srcIn),
            child: CachedNetworkImage(
              fit: imageUrl != null ? BoxFit.cover : BoxFit.contain,
              imageUrl: imageUrl ??
                  'https://qalam-center.s3.eu-central-1.amazonaws.com/logo_transparent.png',
            ),
          ),
        ).paddingSymmetric(vertical: 4, horizontal: 4),
      ),
    );
  }
}
