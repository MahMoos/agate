part of 'models.dart';

@freezed
class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    required String id,
    String? name,
    String? title,
    String? description,
    @Default(0) double price,
    @Default('IQD') String currency,
    double? discount,
    String? imageUrl,
    @Default(false) bool isSubscribed,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);
}

extension SubjectModelEx on SubjectModel {
  Subject toEntity() => Subject(
        id: id,
        name: title ?? name ?? '',
        description: description,
        price: price,
        currency: currency,
        discount: discount,
        imageUrl: imageUrl,
        isSubscribed: isSubscribed,
      );
}
