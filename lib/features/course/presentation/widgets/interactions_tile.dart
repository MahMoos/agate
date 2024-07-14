part of 'widgets.dart';

class InteractionsTile extends StatelessWidget {
  const InteractionsTile({
    required this.onTap,
    this.rating,
    this.participants,
    super.key,
  });

  final VoidCallback onTap;
  final double? rating;
  final int? participants;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 16,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (rating != null)
            RatingBarIndicator(
              rating: rating!,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemSize: 20,
            ),
          const Spacer(),
          if (participants != null) ...[
            const Icon(
              Icons.people_alt_rounded,
              color: Colors.grey,
              size: 18,
            ).paddingSymmetric(horizontal: 4),
            Text(
              context.formatIntCompact(participants!),
              style: context.textTheme.bodySmall,
            ).paddingOnly(top: 4),
          ],
          const SizedBox(width: 24),
        ],
      ).paddingSymmetric(horizontal: 16),
    );
  }
}
