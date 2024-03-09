import '../../../../common/api/api.dart';
import '../entities/entities.dart';

abstract class UserRepository {
  Future<Preferences> getPreferences();

  Future<bool> setPreferences(Preferences preferences);

  Future<Balance> getWalletBalance();

  Future<(Balance, Balance)> deposit(String cardId);

  Future<List<Transaction>> getTransactions(TransactionsParams params);
}
