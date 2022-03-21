
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
@immutable
class SettingState with _$SettingState {

  const factory SettingState({
    String? themeMode,
    String? languageCode,
    AsyncValue<bool?>? isLocalSaved,
    AsyncValue<bool?>? isThemeSaved,
  }) = _SettingState;

}