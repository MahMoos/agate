part of 'pages.dart';

class BookCategoriesPage extends StatelessWidget {
  const BookCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EndlessAnimatedListView(
      provider: bookCategoriesProvider(const PaginatedParams()),
      sliverAppBar: const SearchAppBar(),
      itemBuilder: (context, category) {
        return SizedBox(
          height: 178,
          child: ShortcutCard(
            title: category.name,
            imageUrl: category.imageUrl,
            imageFit: BoxFit.contain,
            imageAlignment:
                context.isRTL ? Alignment.centerLeft : Alignment.centerRight,
            onTap: () => context.push('/books/categories/${category.id}'),
          ).paddingSymmetric(horizontal: 12, vertical: 4),
        );
      },
    );
  }
}
