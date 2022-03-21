// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingStateTearOff {
  const _$SettingStateTearOff();

  _SettingState call(
      {String? themeMode,
      String? languageCode,
      AsyncValue<bool?>? isLocalSaved,
      AsyncValue<bool?>? isThemeSaved}) {
    return _SettingState(
      themeMode: themeMode,
      languageCode: languageCode,
      isLocalSaved: isLocalSaved,
      isThemeSaved: isThemeSaved,
    );
  }
}

/// @nodoc
const $SettingState = _$SettingStateTearOff();

/// @nodoc
mixin _$SettingState {
  String? get themeMode => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;
  AsyncValue<bool?>? get isLocalSaved => throw _privateConstructorUsedError;
  AsyncValue<bool?>? get isThemeSaved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
  $Res call(
      {String? themeMode,
      String? languageCode,
      AsyncValue<bool?>? isLocalSaved,
      AsyncValue<bool?>? isThemeSaved});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? languageCode = freezed,
    Object? isLocalSaved = freezed,
    Object? isThemeSaved = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocalSaved: isLocalSaved == freezed
          ? _value.isLocalSaved
          : isLocalSaved // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool?>?,
      isThemeSaved: isThemeSaved == freezed
          ? _value.isThemeSaved
          : isThemeSaved // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool?>?,
    ));
  }
}

/// @nodoc
abstract class _$SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$SettingStateCopyWith(
          _SettingState value, $Res Function(_SettingState) then) =
      __$SettingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? themeMode,
      String? languageCode,
      AsyncValue<bool?>? isLocalSaved,
      AsyncValue<bool?>? isThemeSaved});
}

/// @nodoc
class __$SettingStateCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateCopyWith<$Res> {
  __$SettingStateCopyWithImpl(
      _SettingState _value, $Res Function(_SettingState) _then)
      : super(_value, (v) => _then(v as _SettingState));

  @override
  _SettingState get _value => super._value as _SettingState;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? languageCode = freezed,
    Object? isLocalSaved = freezed,
    Object? isThemeSaved = freezed,
  }) {
    return _then(_SettingState(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocalSaved: isLocalSaved == freezed
          ? _value.isLocalSaved
          : isLocalSaved // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool?>?,
      isThemeSaved: isThemeSaved == freezed
          ? _value.isThemeSaved
          : isThemeSaved // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool?>?,
    ));
  }
}

/// @nodoc

class _$_SettingState implements _SettingState {
  const _$_SettingState(
      {this.themeMode,
      this.languageCode,
      this.isLocalSaved,
      this.isThemeSaved});

  @override
  final String? themeMode;
  @override
  final String? languageCode;
  @override
  final AsyncValue<bool?>? isLocalSaved;
  @override
  final AsyncValue<bool?>? isThemeSaved;

  @override
  String toString() {
    return 'SettingState(themeMode: $themeMode, languageCode: $languageCode, isLocalSaved: $isLocalSaved, isThemeSaved: $isThemeSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingState &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode) &&
            const DeepCollectionEquality()
                .equals(other.languageCode, languageCode) &&
            const DeepCollectionEquality()
                .equals(other.isLocalSaved, isLocalSaved) &&
            const DeepCollectionEquality()
                .equals(other.isThemeSaved, isThemeSaved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(themeMode),
      const DeepCollectionEquality().hash(languageCode),
      const DeepCollectionEquality().hash(isLocalSaved),
      const DeepCollectionEquality().hash(isThemeSaved));

  @JsonKey(ignore: true)
  @override
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {String? themeMode,
      String? languageCode,
      AsyncValue<bool?>? isLocalSaved,
      AsyncValue<bool?>? isThemeSaved}) = _$_SettingState;

  @override
  String? get themeMode;
  @override
  String? get languageCode;
  @override
  AsyncValue<bool?>? get isLocalSaved;
  @override
  AsyncValue<bool?>? get isThemeSaved;
  @override
  @JsonKey(ignore: true)
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
