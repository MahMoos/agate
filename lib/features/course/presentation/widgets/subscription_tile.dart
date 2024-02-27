part of 'widgets.dart';

class SubscriptionTile extends StatelessWidget {
  const SubscriptionTile({
    required this.price,
    required this.currency,
    required this.onSubscribed,
    this.discount,
    super.key,
  });

  final double price;
  final String currency;
  final double? discount;
  final VoidCallback onSubscribed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        discount != null
            ? context.formatMoney(
                price - discount!,
                currency,
              )
            : context.formatMoney(
                price,
                currency,
              ),
        style: context.displayMedium!
            .copyWith(color: discount != null ? Colors.green : null),
      ),
      subtitle: discount != null
          ? Text(
              context.formatMoney(
                price,
                currency,
              ),
              style: context.labelLarge?.copyWith(
                decoration: TextDecoration.lineThrough,
              ),
            )
          : null,
      trailing: ElevatedButton.icon(
        onPressed: onSubscribed,
        icon: const Icon(Icons.how_to_reg_rounded),
        label: Text(
          context.strings.subscribe,
        ).paddingOnly(top: 4),
      ),
    ).paddingSymmetric(vertical: 8);
  }
}
