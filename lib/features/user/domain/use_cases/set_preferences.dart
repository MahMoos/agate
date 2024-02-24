part of 'use_cases.dart';

class SetPreferences with UseCase<bool, Preferences> {
  const SetPreferences(this.repository);
  final UserRepository repository;

  @override
  Future<bool> call(Preferences params) {
    return repository.setPreferences(params);
  }
}
