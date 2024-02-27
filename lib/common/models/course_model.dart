part of 'models.dart';

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String id,
    required String name,
    @Default(0) double price,
    int? totalLectures,
    List<TeacherModel>? teachers,
    String? imageUrl,
    double? discount,
    int? participants,
    double? rating,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}

extension CourseModelEx on CourseModel {
  Course toEntity() => Course(
        id: id,
        name: name,
        totalLectures: totalLectures ?? 0,
        teachers: teachers?.map((TeacherModel e) => e.toEntity()).toList(),
        imageUrl: imageUrl,
        price: price,
        discount: discount,
        participants: participants,
        rating: rating,
      );
}
