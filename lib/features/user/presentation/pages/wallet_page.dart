part of 'pages.dart';

class WalletPage extends ConsumerWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EndlessAnimatedListView(
      provider: transactionsProvider(language: context.locale.languageCode),
      sliverAppBar: SliverAppBar(
        title: Text(context.strings.wallet),
        bottom: PreferredSize(
          preferredSize: Size(context.width, 58),
          child: Row(
            children: [
              Text(context.strings.availableBalance),
              const SizedBox(width: 16),
              ref.watch(walletControllerProvider).when(
                    data: (data) => Text(
                      data.toStringFormatted(context),
                      style: context.titleLarge,
                    ),
                    error: (_, __) => TextButton(
                      onPressed: () {},
                      child: Text(context.strings.errorOccurred),
                    ),
                    loading: () => const CircularProgressIndicator(),
                  ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => GoRouter.of(context).pushNamed('deposit'),
                child: Text(context.strings.deposit),
              ),
            ],
          ).paddingSymmetric(horizontal: 16, vertical: 8),
        ),
      ),
      itemBuilder: (context, transaction) =>
          TransactionCard(transaction: transaction),
    );
  }
}
