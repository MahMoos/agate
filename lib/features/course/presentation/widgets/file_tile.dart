part of 'widgets.dart';

class FileTile extends StatelessWidget {
  const FileTile({
    required this.file,
    super.key,
  });

  final LectureFile file;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(
          file.name,
          style: context.textTheme.displaySmall,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ).withHero(
          '${file.id}-name',
        ),
        subtitle: Text(
          file.extension,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: context.dividerColor),
        ),
        leading: AspectRatio(
          aspectRatio: 9 / 16,
          child: switch (file.extension) {
            '.pdf' => const Icon(Icons.picture_as_pdf_rounded),
            '.doc' => const Icon(Icons.wordpress),
            '.docx' => const Icon(Icons.wordpress),
            String() => const Icon(Icons.file_present_outlined),
          },
        ),
        onTap: _launchUrl,
        horizontalTitleGap: 4,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        titleAlignment: ListTileTitleAlignment.top,
      ),
    );
  }

  Future<void> _launchUrl() async {
    final uri = Uri.tryParse(file.url);
    if (uri != null &&
        !await launchUrl(uri, mode: LaunchMode.externalNonBrowserApplication)) {
      throw Exception('Could not launch ${file.url}');
    }
  }
}
