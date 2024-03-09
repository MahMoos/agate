import 'package:flutter/material.dart';

import '../../../../common/api/api.dart';
import '../../../../core/models/models.dart';
import '../../../../core/services/http/http_service.dart';
import '../../../../core/services/storage/storage_service.dart';
import '../models/models.dart';

part 'local_user_data_source.dart';
part 'remote_user_data_source.dart';

abstract class UserDataSource extends DataSource {
  const UserDataSource();

  Future<PreferencesModel> getPreferences();

  Future<bool> setPreferences(PreferencesModel preferencesModel);
}
