part of 'entities.dart';

class Course {
  const Course({
    required this.id,
    required this.name,
    required this.totalLectures,
    this.imageUrl,
    this.teachers,
    this.price,
    this.currency = 'IQD',
    this.discount,
    this.participants,
    this.rating,
  });

  final String id;
  final String name;
  final int totalLectures;
  final String? imageUrl;
  final List<Teacher>? teachers;

  final double? price;
  final String currency;

  final double? discount;

  final int? participants;

  final double? rating;
}
