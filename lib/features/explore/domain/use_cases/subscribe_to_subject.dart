part of 'use_cases.dart';

class SubscribeToSubject with UseCase<bool, String> {
  const SubscribeToSubject(this.repository);

  final ExploreRepository repository;

  @override
  Future<bool> call(String params) {
    return repository.subscribeToSubject(params);
  }
}
