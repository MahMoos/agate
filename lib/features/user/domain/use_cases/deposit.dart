part of 'use_cases.dart';

class Deposite with UseCase<(Balance, Balance), String> {
  const Deposite(this.repository);

  final UserRepository repository;

  @override
  Future<(Balance, Balance)> call(String params) {
    return repository.deposit(params);
  }
}
