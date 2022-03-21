

import 'package:flutter_goroute_demo/feature/setting/application/service/setting_service.dart';
import 'package:flutter_goroute_demo/feature/setting/application/service/setting_service_impl.dart';
import 'package:flutter_goroute_demo/feature/splash/presentation/state/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final appControllerProvider = StateNotifierProvider<AppController,AppState>((ref) {
  final settingService = ref.watch(settingServiceProvider);

  return AppController(settingService: settingService, state: const AppState())
    ..getThemeMode()
    ..getLanguageCode();
});

class AppController extends StateNotifier<AppState> {
  final SettingService settingService;

  AppController({required this.settingService, required AppState state}) : super(state);

 
  void getLanguageCode() async {
    final result = await settingService.getLanguageCode();
    result.when(
      (error) => state = state.copyWith(languageCode: AsyncValue.error(error)), 
      (success) => state = state.copyWith(languageCode: AsyncValue.data(success)),);
  }

  void getThemeMode() async {
    final result = await settingService.getThemeMode();
    result.when(
      (error) => state = state.copyWith(themeMode: AsyncValue.error(error)), 
      (success) => state = state.copyWith(themeMode: AsyncValue.data(success)),);
  }
  

}