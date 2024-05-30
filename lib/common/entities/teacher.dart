part of 'entities.dart';

class Teacher extends User {
  const Teacher({
    required super.id,
    required super.name,
    super.photoUrl,
    super.email,
    super.phoneNumber,
    this.specialization,
    this.degree,
    this.prefix,
  });

  factory Teacher.fromJson(Map<String, String?> json) {
    return Teacher(
      id: json['id'],
      name: json['name'],
      photoUrl: json['imageUrl'],
      email: json['email'],
      phoneNumber: json['phone'],
      specialization: json['specialization'],
      degree: json['degree'],
      prefix: json['prefix'],
    );
  }

  final String? specialization;
  final String? degree;
  final String? prefix;
}
