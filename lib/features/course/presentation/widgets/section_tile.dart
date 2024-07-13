part of 'widgets.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({required this.section, super.key});

  final Section section;

  @override
  Widget build(BuildContext context) {
    return NavigationTile(
      title: section.name,
      subtitle: section.description,
      onTap: () =>
          context.push('/courses/${section.courseId}/sections/${section.id}'),
    ).paddingSymmetric(vertical: 8, horizontal: 16);
  }
}
