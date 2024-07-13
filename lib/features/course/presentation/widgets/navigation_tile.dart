part of 'widgets.dart';

class NavigationTile extends StatelessWidget {
  const NavigationTile({
    required this.title,
    this.subtitle,
    this.onTap,
    super.key,
  });

  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: context.displayMedium,
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: context.dividerColor),
      ),
      trailing: const Icon(Icons.navigate_next),
      onTap: onTap,
    ).paddingSymmetric(vertical: 8, horizontal: 16);
  }
}
