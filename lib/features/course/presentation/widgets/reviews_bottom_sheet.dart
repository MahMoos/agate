part of 'widgets.dart';

class ReviewsBottomSheet extends ConsumerStatefulWidget {
  const ReviewsBottomSheet({
    required this.isSubscribed,
    required this.courseId,
    this.lectureId,
    super.key,
  });

  final bool isSubscribed;
  final String courseId;
  final String? lectureId;

  @override
  ConsumerState<ReviewsBottomSheet> createState() => _ReviewsBottomSheetState();
}

class _ReviewsBottomSheetState extends ConsumerState<ReviewsBottomSheet> {
  double? _rating;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return EndlessAnimatedListView(
      provider: reviewsProvider(widget.courseId, widget.lectureId),
      sliverAppBar: SliverAppBar(
        title: Text(context.strings.reviews),
      ),
      itemBuilder: (context, review) => ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(review.createdBy),
            RatingBarIndicator(
              rating: review.rating,
              itemSize: 20,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
          ],
        ),
        subtitle: review.text != null
            ? Text(
                review.text!,
                maxLines: 5,
              )
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: context.dividerColor),
        ),
      ).paddingSymmetric(vertical: 8, horizontal: 16),
      persistentFooterButtons: widget.isSubscribed
          ? [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(context.strings.addReview),
                      RatingBar.builder(
                        allowHalfRating: true,
                        itemSize: 20,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) =>
                            setState(() => _rating = rating),
                      ),
                    ],
                  ),
                  TextField(
                    controller: _controller,
                    maxLines: 5,
                    minLines: 3,
                  ).paddingSymmetric(vertical: 16),
                  ElevatedButton(
                    onPressed: _rating != null
                        ? () => ref
                            .read(
                              reviewsProvider(widget.courseId, widget.lectureId)
                                  .notifier,
                            )
                            .addReview(
                              _rating!,
                              _controller.text,
                            )
                        : null,
                    child: Text(context.strings.publish),
                  ),
                ],
              ),
            ]
          : null,
    ).paddingLTRB(0, 48, 0, 0);
  }
}
