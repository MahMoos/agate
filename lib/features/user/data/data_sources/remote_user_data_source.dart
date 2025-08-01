part of 'user_data_source.dart';

class RemoteUserDataSource extends UserDataSource implements RemoteDataSource {
  const RemoteUserDataSource(this.client);

  @override
  final HttpService client;

  @override
  Future<PreferencesModel> getPreferences() async {
    throw UnimplementedError();
  }

  @override
  Future<bool> setPreferences(PreferencesModel preferencesModel) async {
    throw UnimplementedError();
  }

  Future<BalanceModel> getWalletBalance() {
    return client.get<BalanceModel>(
      ApiRoutes.wallet,
      parser: (json) => BalanceModel.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<(BalanceModel, BalanceModel)> deposit(String cardId) {
    return client.post<(BalanceModel, BalanceModel)>(
      ApiRoutes.deposit(cardId),
      parser: (json) => (
        BalanceModel(
          balance: (json as Map<String, dynamic>)['amount'] as num,
          currency: json['currency'] as String? ?? 'IQD',
        ),
        BalanceModel(
          balance: json['balance'] as num,
          currency: json['currency'] as String? ?? 'IQD',
        )
      ),
      data: null,
    );
  }

  Future<List<TransactionModel>> getTransactions(TransactionsParams params) {
    return client.getList<TransactionModel>(
      ApiRoutes.transactions(params),
      parser: (json) => TransactionModel.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<String> uploadPhoto(XFile file) async {
    final multipartFile = await MultipartFile.fromFile(
      file.path,
      filename: file.name,
      contentType: DioMediaType.parse('image/${file.name.split('.').last}'),
    );
    final formData = FormData.fromMap({
      'File': multipartFile,
      'Type': '1',
    });
    return client.post<String>(
      ApiRoutes.resources,
      data: formData,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'multipart/form-data',
      },
      parser: (data) => data as String,
    );
  }
}
