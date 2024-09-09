part of 'widgets.dart';

class NetworkSvgIconButton extends StatelessWidget {
  const NetworkSvgIconButton({
    required this.url,
    required this.onPressed,
    super.key,
  });
  final String url;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.network(
        url,
        height: 32,
        color: context.theme.textTheme.titleLarge?.color,
        placeholderBuilder: (BuildContext context) =>
            const SizedBox(height: 24),
      ),
    );
  }
}
