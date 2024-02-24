import 'package:flutter/material.dart';

import '../../../../core/models/models.dart';
import '../../../../core/services/storage/storage_service.dart';
import '../models/models.dart';
import 'user_data_source.dart';

class LocalUserDataSource extends UserDataSource implements LocalDataSource {
  const LocalUserDataSource(this.storage);

  @override
  final StorageService storage;

  @override
  Future<PreferencesModel> getPreferences() async {
    final themeMode = await storage.get<String>('theme_mode');
    final language = await storage.get<String>('language');
    return PreferencesModel(
      themeMode: themeMode != null
          ? ThemeMode.values.firstWhere((element) => element.name == themeMode)
          : ThemeMode.system,
      language: language ?? 'ar',
    );
  }

  @override
  Future<bool> setPreferences(PreferencesModel preferencesModel) async {
    return await storage.set<String>(
          'theme_mode',
          preferencesModel.themeMode.name,
        ) &&
        await storage.set<String>(
          'language',
          preferencesModel.language,
        );
  }
}
