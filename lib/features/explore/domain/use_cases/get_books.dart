part of 'use_cases.dart';

class GetBooks with UseCase<List<Book>, BooksParams> {
  const GetBooks(this.repository);

  final ExploreRepository repository;

  @override
  Future<List<Book>> call(BooksParams params) {
    return repository.getBooks(params);
  }
}
