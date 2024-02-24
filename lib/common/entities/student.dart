part of 'entities.dart';

class Student extends User {
  const Student({
    required super.id,
    required super.name,
    super.photoUrl,
    super.email,
    super.phoneNumber,
    this.universityName,
  });

  final String? universityName;
}
