part of '../api.dart';

class LecturesParams extends PaginatedParams {
  const LecturesParams({
    super.page,
    this.name,
    this.courseId,
    this.sectionId,
    this.subjectId,
  });

  final String? name;
  final String? courseId;
  final String? sectionId;
  final String? subjectId;

  LecturesParams copyWith({
    int? page,
    String? name,
    String? courseId,
    String? sectionId,
    String? subjectId,
  }) =>
      LecturesParams(
        page: page ?? super.page,
        name: name ?? this.name,
        courseId: courseId ?? this.courseId,
        sectionId: sectionId ?? this.sectionId,
        subjectId: subjectId ?? this.subjectId,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (name != null) 'Name': name,
        if (courseId != null) 'CourseId': courseId,
        if (sectionId != null) 'SectionId': sectionId,
        if (subjectId != null) 'SubjectId': subjectId,
      };

  @override
  LecturesParams nextPage() => copyWith(page: page + 1);
}
