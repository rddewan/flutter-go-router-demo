
import 'package:flutter_goroute_demo/data/shared_preference/shared_pref.dart';
import 'package:flutter_goroute_demo/data/shared_preference/shared_pref_const.dart';
import 'package:flutter_goroute_demo/data/shared_preference/shared_pref_provider.dart';
import 'package:flutter_goroute_demo/util/error/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';



// Provide the SharedPrefImpl
final sharedPrefImplProvider = Provider<SharedPref>((ref) {
  final _sharedPreferences = ref.watch(sharedPreferenceProvider)
    .when(
      data: (data) => data,
      error: (e,s) => null, 
      loading: () => null,
    );

  return SharedPrefImpl(_sharedPreferences);  
});

/// Implementation of shared pref 
/// This class should be entry point for all your shared preferences read and write 
class SharedPrefImpl implements SharedPref {
  
  final SharedPreferences? _sharedPreferences;

  SharedPrefImpl(this._sharedPreferences);
  
  @override
  String? getLanguageCode() {
    try {

      return  _sharedPreferences?.getString(keyLocal);

    } on Exception catch(e) {

      throw Failure(message: e.toString());

    }
    
  }

  @override
  String? getThemeMode() {
    try {

      return _sharedPreferences?.getString(keyTheme);

    } on Exception catch(e) {

      throw Failure(message: e.toString());
      
    }
    
  }

  @override
  Future<bool?> setLanguageCode(String local) async {
    try {

      return await _sharedPreferences?.setString(keyLocal, local);

    } on Exception catch(e) {

      throw Failure(message: e.toString());
      
    }
    
  }

  @override
  Future<bool?> setThemeMode(String theme) async {
    try {

      return await _sharedPreferences?.setString(keyTheme, theme);

    } on Exception catch(e) {

      throw Failure(message: e.toString());
      
    }
    
  }
  
}