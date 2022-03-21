
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
@immutable
class AppState with _$AppState {

  const factory AppState({
    AsyncValue<String?>? themeMode,
    AsyncValue<String?>? languageCode,   
  }) = _AppState;

}