part of 'models.dart';

@freezed
class SlideModel with _$SlideModel {
  const factory SlideModel({
    required String id,
    String? imageUrl,
    String? title,
    String? actionUrl,
  }) = _SlideModel;

  factory SlideModel.fromJson(Map<String, dynamic> json) =>
      _$SlideModelFromJson(json);
}

extension SlideModelEx on SlideModel {
  Slide toEntity() => Slide(
        id: id,
        imageUrl: imageUrl,
        title: title,
        actionUrl: actionUrl,
      );
}
