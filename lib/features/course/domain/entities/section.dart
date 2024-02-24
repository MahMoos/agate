part of 'entities.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required String id,
    required String courseId,
    required String name,
    Teacher? teacher,
    String? description,
    List<Lecture>? lectures,
  }) = _Section;
}
