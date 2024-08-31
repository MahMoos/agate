part of 'controllers.dart';

@Riverpod(keepAlive: true)
class BookCategories extends _$BookCategories
    with PaginationController<Subject> {
  late GetBookCategories _getBookCategories;

  @override
  Future<List<Subject>> build(PaginatedParams params) async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    paginatedParams = params;
    _getBookCategories = GetBookCategories(repository);
    return loadData();
  }

  @override
  FutureOr<List<Subject>> loadData() async {
    return _getBookCategories(paginatedParams);
  }
}

@riverpod
Future<Subject> bookCategory(BookCategoryRef ref, String id) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  final subject = ref
      .watch(bookCategoriesProvider(const PaginatedParams()).notifier)
      .data
      ?.firstWhereOrNull((category) => category.id == id);
  return subject != null
      ? Future.value(subject)
      : GetBookCategory(repo).call(id);
}
