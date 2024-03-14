part of 'use_cases.dart';

class GetBook with UseCase<Book, String> {
  const GetBook(this.repository);

  final ExploreRepository repository;

  @override
  Future<Book> call(String params) {
    return repository.getBook(params);
  }
}
