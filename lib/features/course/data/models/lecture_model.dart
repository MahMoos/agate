part of 'models.dart';

@Freezed(toJson: false)
class LectureModel with _$LectureModel {
  const factory LectureModel({
    required String id,
    required String courseId,
    required String sectionId,
    required String name,
    String? subjectId,
    String? courseName,
    String? description,
    String? videoUrl,
    String? imageUrl,
    // List<LectureFile>? files,
    Duration? duration,
    Duration? completedDuration,
    @Default(false) bool isCompleted,
    @Default(0) double price,
    @Default('IQD') String currency,
    @Default(false) bool isSubscribed,
    double? rating,
    double? discount,
  }) = _LectureModel;

  factory LectureModel.fromJson(Map<String, dynamic> json) =>
      _$LectureModelFromJson(json);
}

extension LectureModelEx on LectureModel {
  Lecture toEntity() => Lecture(
        id: id,
        courseId: courseId,
        title: name,
        description: description,
        imageUrl: imageUrl,
        videoUrl: videoUrl,
        courseName: courseName ?? '',
        sectionId: sectionId,
        subjectId: subjectId,
        completedDuration: completedDuration,
        currency: currency,
        duration: duration,
        isCompleted: isCompleted,
        isSubscribed: isSubscribed,
        price: price,
        discount: discount,
        rating: rating,
      );
}
