part of 'widgets.dart';

class BookTile extends StatelessWidget {
  const BookTile({
    required this.book,
    super.key,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: book.title != null
            ? Text(
                book.title!,
                style: context.textTheme.displaySmall,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).withHero(
                '${book.id}-name',
              )
            : null,
        subtitle: book.author != null
            ? Text(
                book.author!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: context.dividerColor),
        ),
        leading: AspectRatio(
          aspectRatio: 9 / 16,
          child: book.imageUrl != null
              ? Hero(
                  tag: book.imageUrl!,
                  child: CachedNetworkImage(
                    imageUrl: book.imageUrl!,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  color: context.theme.disabledColor.withAlpha(200),
                ),
        ),
        onTap: book.url != null ? _launchUrl : null,
        horizontalTitleGap: 4,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        titleAlignment: ListTileTitleAlignment.top,
      ),
    );
  }

  Future<void> _launchUrl() async {
    final uri = Uri.tryParse(book.url!);
    if (uri != null &&
        !await launchUrl(uri, mode: LaunchMode.externalNonBrowserApplication)) {
      throw Exception('Could not launch ${book.url}');
    }
  }
}
