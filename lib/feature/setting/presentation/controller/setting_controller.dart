

import 'package:flutter_goroute_demo/feature/setting/application/service/setting_service.dart';
import 'package:flutter_goroute_demo/feature/setting/application/service/setting_service_impl.dart';
import 'package:flutter_goroute_demo/feature/setting/presentation/state/setting_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingControllerProvider = StateNotifierProvider.autoDispose<SettingController,SettingState>((ref) {
  final settingService = ref.watch(settingServiceProvider);

  return SettingController(settingService: settingService, state: const SettingState())
    ..getThemeMode()
    ..getLanguageCode();
});

class SettingController extends StateNotifier<SettingState> {
  final SettingService settingService;

  SettingController({required this.settingService, required SettingState state}) : super(state);

  void setLanguageCode(String local) async {
    final result = await settingService.setLanguageCode(local);
    result.when(
      (error) => state = state.copyWith(isLocalSaved: AsyncValue.error(error)), 
      (success) => state = state.copyWith(isLocalSaved: AsyncValue.data(success),languageCode: local),
    );
    
  }

  void setThemeMode(String theme) async {
    final result = await settingService.setThemeMode(theme);
    result.when(
      (error) => state = state.copyWith(isThemeSaved: AsyncValue.error(error)), 
      (success) => state = state.copyWith(isThemeSaved: AsyncValue.data(success), themeMode: theme),
    );

  }

  void getLanguageCode() async {
    final result = await settingService.getLanguageCode();
    result.when(
      (error) => state = state.copyWith(languageCode: null), 
      (success) => state = state.copyWith(languageCode: success),);
  }

  void getThemeMode() async {
    final result = await settingService.getThemeMode();
    result.when(
      (error) => state = state.copyWith(themeMode: null), 
      (success) => state = state.copyWith(themeMode: success),);
  }
  

}