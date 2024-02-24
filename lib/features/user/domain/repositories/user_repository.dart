import '../entities/entities.dart';

abstract class UserRepository {
  Future<Preferences> getPreferences();
  Future<bool> setPreferences(Preferences preferences);
}
