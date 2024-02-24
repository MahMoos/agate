part of 'entities.dart';

@freezed
class Home with _$Home {
  const factory Home({
    List<Slide>? slides,
    List<MyCourse>? myCourses,
    List<Course>? specialCourses,
  }) = _Home;
}
