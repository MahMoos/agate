part of 'pages.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EndlessAnimatedListView(
      provider: subjectsProvider(const SubjectsParams()),
      sliverAppBar: const SearchAppBar(),
      itemBuilder: (context, subject) {
        return SizedBox(
          height: 178,
          child: ShortcutCard(
            title: subject.name,
            imageUrl: subject.imageUrl,
            imageFit: BoxFit.contain,
            imageAlignment:
                context.isRTL ? Alignment.centerLeft : Alignment.centerRight,
            onTap: () => context.push('/subjects/${subject.id}'),
          ).paddingSymmetric(horizontal: 12, vertical: 4),
        );
      },
    );
  }
}
