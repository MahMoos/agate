part of 'entities.dart';

class CourseDetails extends Course {
  const CourseDetails({
    required super.id,
    required super.name,
    required super.totalLectures,
    required super.price,
    super.currency = 'IQD',
    super.discount,
    super.teachers,
    super.imageUrl,
    super.rating,
    super.participants,
    this.description,
    this.promoUrl,
    this.isSubscribed = false,
    this.subjects,
    this.language = 'ar',
    this.lectures,
    this.completedLectures,
    this.currentLectureId,
    this.currentSectionId,
  });

  final String? description;
  final String? promoUrl;
  final bool isSubscribed;
  final List<Subject>? subjects;
  final String language;
  final List<Lecture>? lectures;
  final int? completedLectures;

  final String? currentLectureId;

  final String? currentSectionId;
}
