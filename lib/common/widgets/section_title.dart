part of 'widgets.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.title,
    super.key,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.textTheme.titleLarge,
        ),
        if (onPressed != null)
          TextButton(
            onPressed: onPressed,
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.only(top: 2)),
            ),
            child: Text(
              context.strings.viewAll,
              style: TextStyle(color: context.theme.colorScheme.primary),
            ).paddingSymmetric(horizontal: 8),
          ),
      ],
    ).paddingOnly(left: 16, top: 16, right: 16);
  }
}
