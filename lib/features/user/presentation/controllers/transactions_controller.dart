part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Transactions extends _$Transactions
    with PaginationController<Transaction> {
  late GetTransactions _getTransactions;
  late TransactionsParams _paginatedParams;

  @override
  Future<List<Transaction>> build({
    required String language,
    TransactionType? type,
  }) async {
    final repository = await ref.watch(userRepositoryProvider.future);
    _getTransactions = GetTransactions(repository);
    _paginatedParams = TransactionsParams(language: language, type: type);
    return loadData();
  }

  @override
  FutureOr<List<Transaction>> loadData() async {
    return _getTransactions(_paginatedParams);
  }
}
