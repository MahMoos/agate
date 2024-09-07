import 'package:reactive_image_picker/reactive_image_picker.dart';

import '../../../../common/api/api.dart';
import '../../../../core/models/models.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_sources/user_data_source.dart';
import '../models/models.dart';

class AgateUserRepository extends BaseRepository implements UserRepository {
  const AgateUserRepository({required this.remote, required this.storage})
      : super(remoteDataSource: remote, localDataSource: storage);

  final RemoteUserDataSource remote;
  final LocalUserDataSource storage;

  @override
  Future<Preferences> getPreferences() async {
    return (await storage.getPreferences()).toEntity();
  }

  @override
  Future<bool> setPreferences(Preferences preferences) {
    return storage.setPreferences(preferences.toModel());
  }

  @override
  Future<Balance> getWalletBalance() async {
    return (await remote.getWalletBalance()).toEntity();
  }

  @override
  Future<(Balance, Balance)> deposit(String cardId) async {
    final (amount, balance) = await remote.deposit(cardId);
    return (balance.toEntity(), amount.toEntity());
  }

  @override
  Future<List<Transaction>> getTransactions(TransactionsParams params) async {
    return (await remote.getTransactions(params))
        .map((e) => e.toEntity())
        .toList();
  }

  @override
  Future<String> uploadPhoto(XFile file) async {
    return remote.uploadPhoto(file);
  }
}
