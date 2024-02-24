part of 'use_cases.dart';

class GetPreferences with UseCase<Preferences, NoParams?> {
  const GetPreferences(this.repository);
  final UserRepository repository;

  @override
  Future<Preferences> call([NoParams? params]) {
    return repository.getPreferences();
  }
}
