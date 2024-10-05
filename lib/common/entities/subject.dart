part of 'entities.dart';

@freezed
class Subject with _$Subject {
  const factory Subject({
    required String id,
    required String name,
    String? description,
    @Default(0) double price,
    @Default('IQD') String currency,
    double? discount,
    String? imageUrl,
    @Default(false) bool isSubscribed,
  }) = _Subject;
}
