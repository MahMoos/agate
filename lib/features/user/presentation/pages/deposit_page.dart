part of 'pages.dart';

class DepositPage extends ConsumerStatefulWidget {
  const DepositPage({super.key});

  @override
  ConsumerState<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends ConsumerState<DepositPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.deposit),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              label: Text(context.strings.pin),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
            controller:
                ref.read(walletControllerProvider.notifier).pinController,
          ).paddingAll(16),
          const Spacer(),
          ElevatedButton(
            onPressed: () async {
              context.showSnackBar(
                const SnackBar(content: LinearProgressIndicator()),
              );
              try {
                final (amount, balance) = await ref
                    .read(
                      walletControllerProvider.notifier,
                    )
                    .deposit();
                if (mounted) {
                  context.showSnackBarMessage(
                    context.strings.depositSuccessfully(
                      amount.toStringFormatted(context),
                      balance.toStringFormatted(context),
                    ),
                  );
                }
              } on Exception {
                if (mounted) {
                  context.showSnackBarMessage(
                    context.strings.errorOccurred,
                  );
                }
              }
            },
            // () =>
            // ref.watch(walletControllerProvider.notifier).deposit(),
            child: Text(context.strings.deposit),
          ).paddingAll(16),
        ],
      ),
    );
  }
}
