part of 'pages.dart';

class TeachersPage extends StatelessWidget {
  const TeachersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EndlessAnimatedListView(
      provider: teachersProvider,
      sliverAppBar: const SearchAppBar(),
      itemBuilder: (context, teacher) {
        return SizedBox(
          height: 178,
          child: ShortcutCard(
            title: teacher.name ?? '',
            imageUrl: teacher.photoUrl,
            imageFit: BoxFit.contain,
            imageAlignment:
                context.isRTL ? Alignment.centerLeft : Alignment.centerRight,
            onTap: () => context.push('/teachers/${teacher.id}'),
          ).paddingSymmetric(horizontal: 12, vertical: 4),
        );
      },
    );
  }
}
