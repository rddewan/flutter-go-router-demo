
import 'package:flutter_goroute_demo/data/shared_preference/shared_pref.dart';
import 'package:flutter_goroute_demo/data/shared_preference/shared_pref_impl.dart';
import 'package:flutter_goroute_demo/feature/setting/application/service/setting_service.dart';
import 'package:flutter_goroute_demo/util/error/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';


final settingServiceProvider = Provider<SettingService>((ref) {
  final _sharedPref = ref.watch(sharedPrefImplProvider);

  return SettingServiceImpl(_sharedPref);
});

class SettingServiceImpl  implements SettingService {
  final SharedPref _sharedPref;

  SettingServiceImpl(this._sharedPref);

  
  @override
  Future<Result<Failure, String?>> getLanguageCode() async {
    try {

      final result = _sharedPref.getLanguageCode();

      return Success(result);

    } on Failure catch(failure) {

      return Error(failure);
    }
  }

  @override
  Future<Result<Failure, String?>> getThemeMode() async {
    try {

      final result = _sharedPref.getThemeMode();

      return Success(result);

    } on Failure catch(failure) {

      return Error(failure);
    }
  }

  @override
  Future<Result<Failure, bool?>> setLanguageCode(String local) async {
    try {

      final result = await _sharedPref.setLanguageCode(local);

      return Success(result);

    } on Failure catch(failure) {

      return Error(failure);
    }
  }

  @override
  Future<Result<Failure, bool?>> setThemeMode(String theme) async {
    try {

      final result = await _sharedPref.setThemeMode(theme);

      return Success(result);

    } on Failure catch(failure) {

      return Error(failure);
    }
  }

}