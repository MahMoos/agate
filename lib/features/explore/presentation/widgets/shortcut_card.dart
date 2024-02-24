part of 'widgets.dart';

class ShortcutCard extends StatelessWidget {
  const ShortcutCard({
    required this.title,
    super.key,
    this.imageUrl,
    this.imageFit = BoxFit.cover,
    this.imageAlignment = Alignment.center,
    this.onTap,
  });

  final String title;
  final String? imageUrl;
  final BoxFit imageFit;
  final Alignment imageAlignment;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 128, 16),
                child: Text(
                  title,
                  style: context.displayLarge?.dropShadow(),
                ),
              ),
            ),
            if (imageUrl != null)
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: context.isRTL
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    end: context.isRTL
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    colors: const [
                      Colors.black54,
                      Colors.black45,
                      Colors.transparent,
                    ],
                    stops: const [0.1, 0.2, 0.75],
                  ).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: CachedNetworkImage(
                  width: double.maxFinite,
                  fit: imageFit,
                  alignment: imageAlignment,
                  imageUrl: imageUrl!,
                ).paddingAll(imageFit != BoxFit.cover ? 8 : 0),
              ),
          ],
        ),
      ),
    );
  }
}
