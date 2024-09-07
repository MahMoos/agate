import 'package:reactive_image_picker/reactive_image_picker.dart';

import '../../../../common/api/api.dart';
import '../entities/entities.dart';

abstract class UserRepository {
  Future<Preferences> getPreferences();

  Future<bool> setPreferences(Preferences preferences);

  Future<Balance> getWalletBalance();

  Future<(Balance, Balance)> deposit(String cardId);

  Future<List<Transaction>> getTransactions(TransactionsParams params);

  Future<String> uploadPhoto(XFile file);
}
