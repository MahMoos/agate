part of 'use_cases.dart';

class SubscribeToCourse with UseCase<bool, String> {
  const SubscribeToCourse(this.repository);

  final CourseRepository repository;

  @override
  Future<bool> call(String params) {
    return repository.subscribeToCourse(params);
  }
}
