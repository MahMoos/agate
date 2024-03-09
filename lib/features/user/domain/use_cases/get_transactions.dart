part of 'use_cases.dart';

class GetTransactions with UseCase<List<Transaction>, TransactionsParams> {
  const GetTransactions(this.repository);

  final UserRepository repository;

  @override
  Future<List<Transaction>> call(TransactionsParams params) {
    return repository.getTransactions(params);
  }
}
