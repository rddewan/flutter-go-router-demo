
import 'package:flutter_goroute_demo/util/error/failure.dart';
import 'package:multiple_result/multiple_result.dart';


abstract class SettingService {

  Future<Result<Failure,bool?>> setLanguageCode(String local);

  Future<Result<Failure,String?>> getLanguageCode();

  Future<Result<Failure,bool?>> setThemeMode(String theme);

  Future<Result<Failure,String?>> getThemeMode();


}