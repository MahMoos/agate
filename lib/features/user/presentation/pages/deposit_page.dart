part of 'pages.dart';

class DepositPage extends ConsumerStatefulWidget {
  const DepositPage({super.key});

  @override
  ConsumerState<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends ConsumerState<DepositPage> {
  bool isLoading = false;

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
            keyboardType: TextInputType.number,
            controller:
                ref.read(walletControllerProvider.notifier).pinController,
          ).paddingAll(16),
          const Spacer(),
          if (!isLoading)
            ElevatedButton(
              onPressed: () async {
                setState(() => isLoading = true);
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
                  ref
                    ..invalidate(walletControllerProvider)
                    ..invalidate(transactionsProvider);
                } on Exception catch (e) {
                  if (mounted) {
                    if (e is HttpException &&
                        e.message != null &&
                        e.message!
                            .contains('No copun found with this card id')) {
                      context.showSnackBarMessage(
                        context.strings.couponNotFound,
                      );
                    } else {
                      context.showSnackBarMessage(
                        context.strings.errorOccurred,
                      );
                    }
                  }
                } finally {
                  setState(() => isLoading = false);
                }
              },
              // () =>
              // ref.watch(walletControllerProvider.notifier).deposit(),
              child: Text(context.strings.deposit),
            ).paddingAll(16)
          else
            const LinearProgressIndicator(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              minHeight: 9,
            ).paddingSymmetric(vertical: 36, horizontal: 24),
        ],
      ),
    );
  }
}
