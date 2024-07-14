part of 'models.dart';

@Freezed(toJson: false)
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required double rate,
    String? id,
    DateTime? date,
    String? createdBy,
    String? text,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

extension ReviewModelEx on ReviewModel {
  Review toEntity() => Review(
        id: id!,
        createdAt: date!,
        createdBy: createdBy!,
        rating: rate,
        text: text,
      );
}
