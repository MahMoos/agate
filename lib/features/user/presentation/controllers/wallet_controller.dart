part of 'controllers.dart';

@Riverpod(keepAlive: true)
class WalletController extends _$WalletController {
  late GetWalletBalance _getWalletBalance;
  late Deposite _deposit;

  @override
  Future<Balance> build() async {
    final repository = await ref.read(userRepositoryProvider.future);
    _getWalletBalance = GetWalletBalance(repository);
    _deposit = Deposite(repository);
    return _getWalletBalance();
  }

  final TextEditingController pinController = TextEditingController();

  Future<(Balance, Balance)> deposit() async {
    final pin = pinController.text;
    final (amount, balance) = await _deposit(pin);
    state = AsyncValue.data(balance);
    return (amount, balance);
  }
}
