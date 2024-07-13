part of 'widgets.dart';

class SectionAppBar extends ConsumerWidget {
  const SectionAppBar({required this.sectionId, super.key});

  final String sectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(sectionProvider(sectionId)).when(
          data: (section) {
            return SliverAppBar(
              title: Text(section.name),
              actions: [
                if (section.teacher != null)
                  UserAvatar(
                    name: section.teacher!.name ?? '',
                    photoUrl: section.teacher!.photoUrl,
                  ).paddingSymmetric(horizontal: 24),
              ],
              bottom:
                  section.description != null && section.description!.isNotEmpty
                      ? PreferredSize(
                          preferredSize: Size(context.width, 98),
                          child: DescriptionParagraph(
                            description: section.description!,
                          ),
                        )
                      : null,
            );
          },
          error: (_, __) => SliverAppBar(
            title: InkWell(
              onTap: () => ref.refresh(sectionProvider(sectionId)),
              child: const Text('...'),
            ),
          ),
          loading: () => const SliverAppBar(title: Text('...')),
        );
  }
}
