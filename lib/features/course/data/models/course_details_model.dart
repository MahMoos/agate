part of 'models.dart';

@Freezed(toJson: false)
class CourseDetailsModel with _$CourseDetailsModel {
  const factory CourseDetailsModel({
    required String id,
    required String name,
    String? description,
    List<Teacher>? teachers,
    @Default(0) int totalLectures,
    @Default(0) int completedLectures,
    @Default(0) double price,
    @Default('IQD') String currency,
    double? discount,
    @Default(0) int participants,
    double? rating,
    List<SectionModel>? sections,
    String? currentLectureId,
    String? currentSectionId,
    String? promoUrl,
    String? imageUrl,
  }) = _CourseDetailsModel;

  factory CourseDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailsModelFromJson(json);
}

extension CourseDetailsModelEx on CourseDetailsModel {
  CourseDetails toEntity() => CourseDetails(
        id: id,
        name: name,
        description: description,
        teachers: teachers,
        totalLectures: totalLectures,
        completedLectures: completedLectures,
        price: price,
        currency: currency,
        discount: discount,
        participants: participants,
        rating: rating,
        sections: sections?.map((e) => e.toEntity()).toList(),
        currentLectureId: currentLectureId,
        currentSectionId: currentSectionId,
        promoUrl: promoUrl,
        imageUrl: imageUrl,
      );
}
