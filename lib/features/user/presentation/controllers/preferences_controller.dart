part of 'controllers.dart';

@Riverpod(keepAlive: true)
class PreferencesController extends _$PreferencesController {
  @override
  Future<Preferences> build() async {
    final prefs = await _getPreferences();
    _updatePrivateParams(prefs);
    return prefs;
  }

  ThemeMode _themeMode = ThemeMode.system;

  String _language = Platform.localeName.substring(0, 2);

  ThemeMode get themeMode => _themeMode;

  String get language => _language;

  Future<Preferences> _getPreferences() async {
    final storage = await ref.read(storageServiceProvider.future);
    final prefs = await GetPreferences(
      AgateUserRepository(
        storage: LocalUserDataSource(storage),
      ),
    ).call();
    _updatePrivateParams(prefs);
    return prefs;
  }

  Future<void> setPreferences(Preferences preferences) async {
    final storage = await ref.read(storageServiceProvider.future);
    _updatePrivateParams(preferences);
    state = await AsyncValue.guard(() async {
      await SetPreferences(
        AgateUserRepository(
          storage: LocalUserDataSource(storage),
        ),
      ).call(preferences);
      return preferences;
    });
  }

  Future<void> toggleBrightness() async {
    final preferences =
        state.value ?? Preferences(themeMode: themeMode, language: language);
    await setPreferences(
      preferences.copyWith(
        themeMode: preferences.themeMode == ThemeMode.dark
            ? ThemeMode.light
            : ThemeMode.dark,
      ),
    );
  }

  Future<void> toggleLanguage() async {
    final preferences =
        state.value ?? Preferences(themeMode: themeMode, language: language);
    await setPreferences(
      preferences.copyWith(
        language: preferences.language == 'ar' ? 'en' : 'ar',
      ),
    );
  }

  void _updatePrivateParams(Preferences preferences) {
    _themeMode = preferences.themeMode;
    _language = preferences.language;
  }
}
