part of 'entities.dart';

class CourseDetails extends Course {
  const CourseDetails({
    required super.id,
    required super.name,
    required super.totalLectures,
    super.teachers,
    super.imageUrl,
    super.price,
    super.currency = 'IQD',
    super.discount,
    super.rating,
    super.participants,
    this.description,
    this.promoUrl,
    this.isSubscribed = false,
    this.subjects,
    this.language = 'ar',
    this.sections,
    this.completedLectures,
    this.currentLectureId,
    this.currentSectionId,
  });

  final String? description;
  final String? promoUrl;
  final bool isSubscribed;
  final List<Subject>? subjects;
  final String language;
  final List<Section>? sections;
  final int? completedLectures;

  final String? currentLectureId;

  final String? currentSectionId;
}
