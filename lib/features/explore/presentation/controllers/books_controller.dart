part of 'controllers.dart';

@Riverpod(keepAlive: true)
class Books extends _$Books with PaginationController<Book> {
  late BooksParams _paginatedParams;
  late ExploreRepository _repo;

  @override
  Future<List<Book>> build([BooksParams params = const BooksParams()]) async {
    _repo = await ref.watch(exploreRepositoryProvider.future);
    _paginatedParams = params;
    return loadData();
  }

  @override
  FutureOr<List<Book>> loadData() async {
    return GetBooks(_repo).call(_paginatedParams);
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
