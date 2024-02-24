part of '../api.dart';

class SectionsParams extends PaginatedParams {
  const SectionsParams({
    super.page,
    this.name,
    this.courseId,
    this.subjectId,
  });

  final String? name;
  final String? courseId;
  final String? subjectId;

  SectionsParams copyWith({
    int? page,
    String? name,
    String? courseId,
    String? sectionId,
    String? subjectId,
  }) =>
      SectionsParams(
        page: page ?? super.page,
        name: name ?? this.name,
        courseId: courseId ?? this.courseId,
        subjectId: subjectId ?? this.subjectId,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (name != null) 'Name': name,
        if (courseId != null) 'CourseId': courseId,
        if (subjectId != null) 'SubjectId': subjectId,
      };

  @override
  PaginatedParams nextPage() => copyWith(page: page + 1);
}
