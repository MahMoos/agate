part of 'entities.dart';

class ReviewsParams extends PaginatedParams {
  const ReviewsParams({
    required this.courseId,
    this.lectureId,
    this.rating,
    this.text,
    super.page,
  });

  final String courseId;
  final String? lectureId;
  final double? rating;
  final String? text;

  ReviewsParams copyWith({
    int? page,
    String? courseId,
    String? lectureId,
    double? rating,
    String? text,
  }) =>
      ReviewsParams(
        page: page ?? super.page,
        courseId: courseId ?? this.courseId,
        lectureId: lectureId ?? this.lectureId,
        rating: rating ?? this.rating,
        text: text ?? this.text,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'CourseId': courseId,
        if (lectureId != null) 'LectureId': lectureId,
      };

  @override
  ReviewsParams nextPage() => copyWith(page: page + 1);
}
