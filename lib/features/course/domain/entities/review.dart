part of 'entities.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required String id,
    required DateTime createdAt,
    required String createdBy,
    required double rating,
    String? text,
  }) = _Review;
}
