part of 'pages.dart';

class DepartmentsPage extends StatelessWidget {
  const DepartmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EndlessAnimatedListView(
      provider: departmentsProvider,
      sliverAppBar: const SearchAppBar(),
      itemBuilder: (context, department) {
        return SizedBox(
          height: 178,
          child: ShortcutCard(
            title: department.name,
            imageUrl: department.logoUrl,
            imageFit: BoxFit.contain,
            imageAlignment:
                context.isRTL ? Alignment.centerLeft : Alignment.centerRight,
            onTap: () => context.push('/departments/${department.id}'),
          ).paddingSymmetric(horizontal: 12, vertical: 4),
        );
      },
    );
  }
}
