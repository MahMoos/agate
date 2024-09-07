part of 'controllers.dart';

@Riverpod(keepAlive: true)
class PreferencesController extends _$PreferencesController {
  late SetPreferences _setPreferences;
  late GetPreferences _getPreferences;
  late UploadPhoto _uploadPhoto;

  @override
  Future<Preferences> build() async {
    final repository = await ref.read(userRepositoryProvider.future);
    _setPreferences = SetPreferences(repository);
    _getPreferences = GetPreferences(repository);
    _uploadPhoto = UploadPhoto(repository);
    return getPreferences();
  }

  ThemeMode _themeMode = ThemeMode.system;

  String _language = Platform.localeName.substring(0, 2);

  ThemeMode get themeMode => _themeMode;

  String get language => _language;

  Future<Preferences> getPreferences() async {
    final prefs = await _getPreferences();
    _updatePrivateParams(prefs);
    return prefs;
  }

  Future<void> setPreferences(Preferences preferences) async {
    _updatePrivateParams(preferences);
    state = await AsyncValue.guard(() async {
      await _setPreferences(preferences);
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

  Future<String> uploadPhoto(XFile file) => _uploadPhoto(file);

  void _updatePrivateParams(Preferences preferences) {
    _themeMode = preferences.themeMode;
    _language = preferences.language;
  }
}
