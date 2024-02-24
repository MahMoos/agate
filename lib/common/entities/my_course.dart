part of 'entities.dart';

class MyCourse extends Course {
  const MyCourse({
    required super.id,
    required super.name,
    required super.totalLectures,
    required this.completedLectures,
    super.imageUrl,
    super.teachers,
    super.price,
    super.discount,
    super.participants,
    super.rating,
    this.currentLectureId,
  });

  final int completedLectures;
  final String? currentLectureId;
}
