part of 'models.dart';

@freezed
class MyCourseModel with _$MyCourseModel {
  const factory MyCourseModel({
    required String id,
    required String name,
    required int completedLectures,
    required int totalLectures,
    List<TeacherModel>? teachers,
    String? currentLectureId,
    String? imageUrl,
  }) = _MyCourseModel;

  factory MyCourseModel.fromJson(Map<String, dynamic> json) =>
      _$MyCourseModelFromJson(json);
}

extension MyCourseModelEx on MyCourseModel {
  MyCourse toEntity() => MyCourse(
        id: id,
        name: name,
        imageUrl: imageUrl,
        completedLectures: completedLectures,
        totalLectures: totalLectures,
        teachers: teachers?.map((e) => e.toEntity()).toList(),
        currentLectureId: currentLectureId,
      );
}
