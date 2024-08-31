part of 'widgets.dart';

class DepartmentSubjectsView extends ConsumerWidget {
  const DepartmentSubjectsView({required this.departmentId, super.key});
  final String departmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final department = ref.watch(
      departmentProvider(departmentId),
    );
    return department.when(
      data: (department) => EndlessAnimatedListView(
        provider: subjectsProvider(SubjectsParams(divisionId: departmentId)),
        sliverAppBar: SliverAppBar(
          title: Text(department.name),
        ),
        itemBuilder: (context, subject) {
          return SizedBox(
            height: 178,
            child: ShortcutCard(
              title: subject.name,
              imageUrl: subject.imageUrl,
              imageFit: BoxFit.contain,
              imageAlignment:
                  context.isRTL ? Alignment.centerLeft : Alignment.centerRight,
              onTap: () => context
                  .push('/departments/$departmentId/subjects/${subject.id}'),
            ).paddingSymmetric(horizontal: 12, vertical: 4),
          );
        },
      ),
      error: (err, stack) => StatusView.anErrorOccurred(
        action: () => ref.refresh(departmentProvider(departmentId).future),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
