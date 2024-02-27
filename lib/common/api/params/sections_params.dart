part of '../api.dart';

class SectionsParams extends PaginatedParams {
  const SectionsParams({
    super.page,
    this.name,
    this.courseId,
  });

  final String? name;
  final String? courseId;

  SectionsParams copyWith({
    int? page,
    String? name,
    String? courseId,
    String? sectionId,
  }) =>
      SectionsParams(
        page: page ?? super.page,
        name: name ?? this.name,
        courseId: courseId ?? this.courseId,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (name != null) 'Name': name,
        if (courseId != null) 'CourseIds': courseId,
      };

  @override
  SectionsParams nextPage() => copyWith(page: page + 1);
}
