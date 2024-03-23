part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Books extends _$Books with PaginationController<Book> {
  late GetBooks _getBooks;

  @override
  Future<List<Book>> build([BooksParams params = const BooksParams()]) async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    paginatedParams = params;
    _getBooks = GetBooks(repository);
    return loadData();
  }

  @override
  FutureOr<List<Book>> loadData() async {
    return _getBooks(paginatedParams as BooksParams);
  }
}

@riverpod
Future<Book> book(BookRef ref, String id) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  final book = ref
      .watch(booksProvider().notifier)
      .data
      ?.firstWhereOrNull((book) => book.id == id);
  return book != null ? Future.value(book) : GetBook(repo).call(id);
}
