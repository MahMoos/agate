part of 'entities.dart';

class Course {
  const Course({
    required this.id,
    required this.name,
    required this.totalLectures,
    required this.price,
    this.currency = 'IQD',
    this.discount,
    this.imageUrl,
    this.teachers,
    this.participants,
    this.rating,
  });

  final String id;
  final String name;
  final int totalLectures;
  final double price;
  final String currency;
  final double? discount;
  final String? imageUrl;
  final List<Teacher>? teachers;
  final int? participants;
  final double? rating;
}
