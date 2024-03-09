part of 'widgets.dart';

class StadiumTile extends StatelessWidget {
  const StadiumTile({
    required this.label,
    required this.prefixIcon,
    this.trailing,
    this.onTap,
    super.key,
  });

  final String label;
  final IconData prefixIcon;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(prefixIcon),
      title: Text(label, style: context.titleLarge),
      trailing: trailing,
      shape: StadiumBorder(
        side: BorderSide(color: context.primaryColor),
      ),
      tileColor: context.theme.colorScheme.secondaryContainer,
      onTap: onTap,
    ).paddingSymmetric(horizontal: 16, vertical: 8);
  }
}
