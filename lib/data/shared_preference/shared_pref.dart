

abstract class SharedPref {

  Future<bool?> setLanguageCode(String local);

  String? getLanguageCode();

  Future<bool?> setThemeMode(String theme);

  String? getThemeMode();


}