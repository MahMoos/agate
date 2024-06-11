part of '../api.dart';

class SubjectsParams extends PaginatedParams {
  const SubjectsParams({
    super.page,
    this.name,
    this.divisionId,
  });

  final String? name;
  final String? divisionId;

  SubjectsParams copyWith({
    int? page,
    String? name,
    String? divisionId,
  }) =>
      SubjectsParams(
        page: page ?? super.page,
        name: name ?? this.name,
        divisionId: divisionId ?? this.divisionId,
      );

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (name != null) 'Name': name,
        if (divisionId != null) 'DivisionId': divisionId,
      };

  @override
  SubjectsParams nextPage() => copyWith(page: page + 1);
}
