part of 'pages.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage(
    this.id, {
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Consumer(
        builder: (context, ref, child) {
          final subject = ref.watch(subjectProvider(id));
          return subject.when(
            data: (subject) => Scaffold(
              appBar: AppBar(
                title: Text(subject.name),
                bottom: TabBar(
                  tabs: [
                    Tab(child: Text(context.strings.books)),
                    Tab(child: Text(context.strings.mcqs)),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  EndlessAnimatedListView(
                    provider: booksProvider(
                      BooksParams(subjectId: subject.id),
                    ),
                    itemBuilder: (context, book) => BookTile(
                      book: book,
                    ).paddingSymmetric(horizontal: 12, vertical: 4),
                  ),
                  EndlessAnimatedListView(
                    provider: mcqGamesProvider(
                      McqGamesParams(subjectId: subject.id),
                    ),
                    itemBuilder: (context, mcqGame) => McqView(
                      mcq: mcqGame,
                    ).paddingSymmetric(horizontal: 12, vertical: 4),
                  ),
                ],
              ),
            ),
            error: (err, stack) => StatusView.anErrorOccurred(
              action: () => ref.refresh(subjectProvider(id).future),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
