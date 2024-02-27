part of '../api.dart';

class CoursesParams extends PaginatedParams {
  const CoursesParams({
    super.page,
    this.query,
    this.name,
    this.teacherIds,
    this.divisionIds,
    this.subjectIds,
    this.isFeatured,
  });

  final String? query;
  final String? name;
  final List<String>? teacherIds;
  final List<String>? divisionIds;
  final List<String>? subjectIds;
  final bool? isFeatured;

  CoursesParams copyWith({
    int? page,
    String? query,
    String? name,
    List<String>? teacherIds,
    List<String>? divisionIds,
    List<String>? subjectIds,
    bool? isFeatured,
  }) =>
      CoursesParams(
        page: page ?? super.page,
        query: query ?? this.query,
        name: name ?? this.name,
        teacherIds: teacherIds ?? this.teacherIds,
        divisionIds: divisionIds ?? this.divisionIds,
        subjectIds: subjectIds ?? this.subjectIds,
        isFeatured: isFeatured ?? this.isFeatured,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (query != null) 'Query': query,
        if (name != null) 'Name': name,
        if (teacherIds != null && teacherIds!.isNotEmpty)
          'Teachers': teacherIds,
        if (divisionIds != null && divisionIds!.isNotEmpty)
          'Divisions': divisionIds,
        if (subjectIds != null && subjectIds!.isNotEmpty)
          'Subjects': subjectIds,
        if (isFeatured != null) 'IsFeatured': isFeatured.toString(),
      };

  @override
  CoursesParams nextPage() => copyWith(page: page + 1);
}
