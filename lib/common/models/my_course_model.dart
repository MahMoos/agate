part of 'models.dart';

@freezed
class MyCourseModel with _$MyCourseModel {
  const factory MyCourseModel({
    required String id,
    required String name,
    required int completedLectures,
    required int totalLectures,
    @Default(0) double price,
    @Default('IQD') String currency,
    double? discount,
    List<TeacherModel>? teachers,
    String? currentLectureId,
    String? imageUrl,
    int? participants,
    double? rating,
  }) = _MyCourseModel;

  factory MyCourseModel.fromJson(Map<String, dynamic> json) =>
      _$MyCourseModelFromJson(json);
}

extension MyCourseModelEx on MyCourseModel {
  MyCourse toEntity() => MyCourse(
    id: id,
        name: name,
        price: price,
        currency: currency,
        discount: discount,
        imageUrl: imageUrl,
        completedLectures: completedLectures,
        totalLectures: totalLectures,
        teachers: teachers?.map((e) => e.toEntity()).toList(),
        currentLectureId: currentLectureId,
        participants: participants,
        rating: rating,
      );
}
