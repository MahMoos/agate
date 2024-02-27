part of 'widgets.dart';

class DescriptionParagraph extends StatelessWidget {
  const DescriptionParagraph({required this.description, super.key});

  final String description;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      description,
      trimCollapsedText: context.strings.showMore,
      trimExpandedText: '',
      moreStyle: context.labelSmall!
          .copyWith(color: context.theme.colorScheme.primary),
    ).paddingAll(16);
  }
}
