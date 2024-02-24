import '../../../../core/models/models.dart';
import '../models/models.dart';

abstract class UserDataSource extends DataSource {
  const UserDataSource();

  Future<PreferencesModel> getPreferences();
  Future<bool> setPreferences(PreferencesModel preferencesModel);
}
