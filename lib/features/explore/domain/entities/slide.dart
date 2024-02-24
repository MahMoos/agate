part of 'entities.dart';

@freezed
class Slide with _$Slide {
  const factory Slide({
    required String id,
    String? imageUrl,
    String? title,
    String? actionUrl,
  }) = _Slide;
}
