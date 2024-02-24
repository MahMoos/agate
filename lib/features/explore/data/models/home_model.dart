part of 'models.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    List<SlideModel>? slides,
    List<MyCourseModel>? myCourses,
    List<CourseModel>? specialCourses,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

extension HomeModelEx on HomeModel {
  Home toEntity() => Home(
        slides: slides?.map((e) => e.toEntity()).toList(),
        myCourses: myCourses?.map((e) => e.toEntity()).toList(),
        specialCourses: specialCourses?.map((e) => e.toEntity()).toList(),
      );
}
