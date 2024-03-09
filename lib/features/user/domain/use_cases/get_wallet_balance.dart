part of 'use_cases.dart';

class GetWalletBalance with UseCase<Balance, NoParams?> {
  const GetWalletBalance(this.repository);

  final UserRepository repository;

  @override
  Future<Balance> call([NoParams? params]) {
    return repository.getWalletBalance();
  }
}
