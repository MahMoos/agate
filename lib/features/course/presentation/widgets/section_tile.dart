part of 'widgets.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({required this.section, super.key});

  final Section section;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(section.name),
      subtitle: section.description != null ? Text(section.description!) : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: context.dividerColor),
      ),
      trailing: const Icon(Icons.navigate_next),
      onTap: () =>
          context.push('/courses/${section.courseId}/sections/${section.id}'),
    ).paddingSymmetric(vertical: 8, horizontal: 16);
  }
}
