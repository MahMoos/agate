part of 'widgets.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    required this.transaction,
    super.key,
  });

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          ListTile(
            leading: switch (transaction.type) {
              TransactionType.deposit => const Icon(
                  Icons.arrow_circle_down_rounded,
                  color: Colors.green,
                ),
              TransactionType.subscription => const Icon(
                  Icons.subscriptions_rounded,
                  color: Colors.amber,
                ),
              TransactionType.withdrawal => const Icon(
                  Icons.arrow_circle_up_rounded,
                  color: Colors.red,
                ),
            }
                .paddingAll(8),
            title: Text(
              context.formatBalance(
                transaction.amount,
                transaction.currency,
              ),
            ),
            subtitle: transaction.createdAt != null
                ? Text(transaction.createdAt!.toLocalFormatted)
                : null,
          ),
          if (transaction.note?.isNotEmpty ?? false) Text(transaction.note!),
        ],
      ),
    );
  }
}
