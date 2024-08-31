part of 'pages.dart';

class BookCategoryPage extends StatelessWidget {
  const BookCategoryPage(
    this.id, {
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final category = ref.watch(bookCategoryProvider(id));
        return category.when(
          data: (category) => Scaffold(
            appBar: AppBar(
              title: Text(category.name),
            ),
            body: EndlessAnimatedListView(
              provider: booksProvider(
                BooksParams(categoryId: category.id),
              ),
              itemBuilder: (context, book) => BookTile(
                book: book,
              ).paddingSymmetric(horizontal: 12, vertical: 4),
            ),
          ),
          error: (err, stack) => StatusView.anErrorOccurred(
            action: () => ref.refresh(bookCategoryProvider(id).future),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
