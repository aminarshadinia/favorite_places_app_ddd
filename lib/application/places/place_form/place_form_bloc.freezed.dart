// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceFormEventTearOff {
  const _$PlaceFormEventTearOff();

  _Initialized initialized(Option<Place> initialPlaceOption) {
    return _Initialized(
      initialPlaceOption,
    );
  }

  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

  _ImageChanged imageChanged(String imageStr) {
    return _ImageChanged(
      imageStr,
    );
  }

  _LatitudeChanged latitudeChanged(double latitudeDouble) {
    return _LatitudeChanged(
      latitudeDouble,
    );
  }

  _LongitudeChanged longitudeChanged(double longitudeDouble) {
    return _LongitudeChanged(
      longitudeDouble,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $PlaceFormEvent = _$PlaceFormEventTearOff();

/// @nodoc
mixin _$PlaceFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Place> initialPlaceOption) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String imageStr) imageChanged,
    required TResult Function(double latitudeDouble) latitudeChanged,
    required TResult Function(double longitudeDouble) longitudeChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LatitudeChanged value) latitudeChanged,
    required TResult Function(_LongitudeChanged value) longitudeChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceFormEventCopyWith<$Res> {
  factory $PlaceFormEventCopyWith(
          PlaceFormEvent value, $Res Function(PlaceFormEvent) then) =
      _$PlaceFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceFormEventCopyWithImpl<$Res>
    implements $PlaceFormEventCopyWith<$Res> {
  _$PlaceFormEventCopyWithImpl(this._value, this._then);

  final PlaceFormEvent _value;
  // ignore: unused_field
  final $Res Function(PlaceFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Place> initialPlaceOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$PlaceFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialPlaceOption = freezed,
  }) {
    return _then(_Initialized(
      initialPlaceOption == freezed
          ? _value.initialPlaceOption
          : initialPlaceOption // ignore: cast_nullable_to_non_nullable
              as Option<Place>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialPlaceOption);

  @override
  final Option<Place> initialPlaceOption;

  @override
  String toString() {
    return 'PlaceFormEvent.initialized(initialPlaceOption: $initialPlaceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialPlaceOption, initialPlaceOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialPlaceOption));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Place> initialPlaceOption) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String imageStr) imageChanged,
    required TResult Function(double latitudeDouble) latitudeChanged,
    required TResult Function(double longitudeDouble) longitudeChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialPlaceOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialPlaceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialPlaceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LatitudeChanged value) latitudeChanged,
    required TResult Function(_LongitudeChanged value) longitudeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PlaceFormEvent {
  const factory _Initialized(Option<Place> initialPlaceOption) = _$_Initialized;

  Option<Place> get initialPlaceOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$PlaceFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'PlaceFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TitleChanged &&
            const DeepCollectionEquality().equals(other.titleStr, titleStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(titleStr));

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Place> initialPlaceOption) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String imageStr) imageChanged,
    required TResult Function(double latitudeDouble) latitudeChanged,
    required TResult Function(double longitudeDouble) longitudeChanged,
    required TResult Function() saved,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
  }) {
    return titleChanged?.call(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LatitudeChanged value) latitudeChanged,
    required TResult Function(_LongitudeChanged value) longitudeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements PlaceFormEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({String imageStr});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    extends _$PlaceFormEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object? imageStr = freezed,
  }) {
    return _then(_ImageChanged(
      imageStr == freezed
          ? _value.imageStr
          : imageStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imageStr);

  @override
  final String imageStr;

  @override
  String toString() {
    return 'PlaceFormEvent.imageChanged(imageStr: $imageStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageChanged &&
            const DeepCollectionEquality().equals(other.imageStr, imageStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageStr));

  @JsonKey(ignore: true)
  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Place> initialPlaceOption) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String imageStr) imageChanged,
    required TResult Function(double latitudeDouble) latitudeChanged,
    required TResult Function(double longitudeDouble) longitudeChanged,
    required TResult Function() saved,
  }) {
    return imageChanged(imageStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
  }) {
    return imageChanged?.call(imageStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(imageStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LatitudeChanged value) latitudeChanged,
    required TResult Function(_LongitudeChanged value) longitudeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements PlaceFormEvent {
  const factory _ImageChanged(String imageStr) = _$_ImageChanged;

  String get imageStr;
  @JsonKey(ignore: true)
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LatitudeChangedCopyWith<$Res> {
  factory _$LatitudeChangedCopyWith(
          _LatitudeChanged value, $Res Function(_LatitudeChanged) then) =
      __$LatitudeChangedCopyWithImpl<$Res>;
  $Res call({double latitudeDouble});
}

/// @nodoc
class __$LatitudeChangedCopyWithImpl<$Res>
    extends _$PlaceFormEventCopyWithImpl<$Res>
    implements _$LatitudeChangedCopyWith<$Res> {
  __$LatitudeChangedCopyWithImpl(
      _LatitudeChanged _value, $Res Function(_LatitudeChanged) _then)
      : super(_value, (v) => _then(v as _LatitudeChanged));

  @override
  _LatitudeChanged get _value => super._value as _LatitudeChanged;

  @override
  $Res call({
    Object? latitudeDouble = freezed,
  }) {
    return _then(_LatitudeChanged(
      latitudeDouble == freezed
          ? _value.latitudeDouble
          : latitudeDouble // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LatitudeChanged implements _LatitudeChanged {
  const _$_LatitudeChanged(this.latitudeDouble);

  @override
  final double latitudeDouble;

  @override
  String toString() {
    return 'PlaceFormEvent.latitudeChanged(latitudeDouble: $latitudeDouble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatitudeChanged &&
            const DeepCollectionEquality()
                .equals(other.latitudeDouble, latitudeDouble));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(latitudeDouble));

  @JsonKey(ignore: true)
  @override
  _$LatitudeChangedCopyWith<_LatitudeChanged> get copyWith =>
      __$LatitudeChangedCopyWithImpl<_LatitudeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Place> initialPlaceOption) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String imageStr) imageChanged,
    required TResult Function(double latitudeDouble) latitudeChanged,
    required TResult Function(double longitudeDouble) longitudeChanged,
    required TResult Function() saved,
  }) {
    return latitudeChanged(latitudeDouble);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
  }) {
    return latitudeChanged?.call(latitudeDouble);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (latitudeChanged != null) {
      return latitudeChanged(latitudeDouble);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LatitudeChanged value) latitudeChanged,
    required TResult Function(_LongitudeChanged value) longitudeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return latitudeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return latitudeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (latitudeChanged != null) {
      return latitudeChanged(this);
    }
    return orElse();
  }
}

abstract class _LatitudeChanged implements PlaceFormEvent {
  const factory _LatitudeChanged(double latitudeDouble) = _$_LatitudeChanged;

  double get latitudeDouble;
  @JsonKey(ignore: true)
  _$LatitudeChangedCopyWith<_LatitudeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LongitudeChangedCopyWith<$Res> {
  factory _$LongitudeChangedCopyWith(
          _LongitudeChanged value, $Res Function(_LongitudeChanged) then) =
      __$LongitudeChangedCopyWithImpl<$Res>;
  $Res call({double longitudeDouble});
}

/// @nodoc
class __$LongitudeChangedCopyWithImpl<$Res>
    extends _$PlaceFormEventCopyWithImpl<$Res>
    implements _$LongitudeChangedCopyWith<$Res> {
  __$LongitudeChangedCopyWithImpl(
      _LongitudeChanged _value, $Res Function(_LongitudeChanged) _then)
      : super(_value, (v) => _then(v as _LongitudeChanged));

  @override
  _LongitudeChanged get _value => super._value as _LongitudeChanged;

  @override
  $Res call({
    Object? longitudeDouble = freezed,
  }) {
    return _then(_LongitudeChanged(
      longitudeDouble == freezed
          ? _value.longitudeDouble
          : longitudeDouble // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LongitudeChanged implements _LongitudeChanged {
  const _$_LongitudeChanged(this.longitudeDouble);

  @override
  final double longitudeDouble;

  @override
  String toString() {
    return 'PlaceFormEvent.longitudeChanged(longitudeDouble: $longitudeDouble)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LongitudeChanged &&
            const DeepCollectionEquality()
                .equals(other.longitudeDouble, longitudeDouble));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(longitudeDouble));

  @JsonKey(ignore: true)
  @override
  _$LongitudeChangedCopyWith<_LongitudeChanged> get copyWith =>
      __$LongitudeChangedCopyWithImpl<_LongitudeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Place> initialPlaceOption) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String imageStr) imageChanged,
    required TResult Function(double latitudeDouble) latitudeChanged,
    required TResult Function(double longitudeDouble) longitudeChanged,
    required TResult Function() saved,
  }) {
    return longitudeChanged(longitudeDouble);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
  }) {
    return longitudeChanged?.call(longitudeDouble);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (longitudeChanged != null) {
      return longitudeChanged(longitudeDouble);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LatitudeChanged value) latitudeChanged,
    required TResult Function(_LongitudeChanged value) longitudeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return longitudeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return longitudeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (longitudeChanged != null) {
      return longitudeChanged(this);
    }
    return orElse();
  }
}

abstract class _LongitudeChanged implements PlaceFormEvent {
  const factory _LongitudeChanged(double longitudeDouble) = _$_LongitudeChanged;

  double get longitudeDouble;
  @JsonKey(ignore: true)
  _$LongitudeChangedCopyWith<_LongitudeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$PlaceFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'PlaceFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Place> initialPlaceOption) initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String imageStr) imageChanged,
    required TResult Function(double latitudeDouble) latitudeChanged,
    required TResult Function(double longitudeDouble) longitudeChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Place> initialPlaceOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String imageStr)? imageChanged,
    TResult Function(double latitudeDouble)? latitudeChanged,
    TResult Function(double longitudeDouble)? longitudeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_LatitudeChanged value) latitudeChanged,
    required TResult Function(_LongitudeChanged value) longitudeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_LatitudeChanged value)? latitudeChanged,
    TResult Function(_LongitudeChanged value)? longitudeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PlaceFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$PlaceFormStateTearOff {
  const _$PlaceFormStateTearOff();

  _PlaceFormState call(
      {required Place place,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<PlaceFailure, Unit>> saveFailureOrSuccessOption}) {
    return _PlaceFormState(
      place: place,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PlaceFormState = _$PlaceFormStateTearOff();

/// @nodoc
mixin _$PlaceFormState {
  Place get place => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<PlaceFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceFormStateCopyWith<PlaceFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceFormStateCopyWith<$Res> {
  factory $PlaceFormStateCopyWith(
          PlaceFormState value, $Res Function(PlaceFormState) then) =
      _$PlaceFormStateCopyWithImpl<$Res>;
  $Res call(
      {Place place,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PlaceFailure, Unit>> saveFailureOrSuccessOption});

  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class _$PlaceFormStateCopyWithImpl<$Res>
    implements $PlaceFormStateCopyWith<$Res> {
  _$PlaceFormStateCopyWithImpl(this._value, this._then);

  final PlaceFormState _value;
  // ignore: unused_field
  final $Res Function(PlaceFormState) _then;

  @override
  $Res call({
    Object? place = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlaceFailure, Unit>>,
    ));
  }

  @override
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceFormStateCopyWith<$Res>
    implements $PlaceFormStateCopyWith<$Res> {
  factory _$PlaceFormStateCopyWith(
          _PlaceFormState value, $Res Function(_PlaceFormState) then) =
      __$PlaceFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Place place,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PlaceFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$PlaceFormStateCopyWithImpl<$Res>
    extends _$PlaceFormStateCopyWithImpl<$Res>
    implements _$PlaceFormStateCopyWith<$Res> {
  __$PlaceFormStateCopyWithImpl(
      _PlaceFormState _value, $Res Function(_PlaceFormState) _then)
      : super(_value, (v) => _then(v as _PlaceFormState));

  @override
  _PlaceFormState get _value => super._value as _PlaceFormState;

  @override
  $Res call({
    Object? place = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_PlaceFormState(
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlaceFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PlaceFormState implements _PlaceFormState {
  const _$_PlaceFormState(
      {required this.place,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Place place;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<PlaceFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PlaceFormState(place: $place, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceFormState &&
            const DeepCollectionEquality().equals(other.place, place) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(place),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$PlaceFormStateCopyWith<_PlaceFormState> get copyWith =>
      __$PlaceFormStateCopyWithImpl<_PlaceFormState>(this, _$identity);
}

abstract class _PlaceFormState implements PlaceFormState {
  const factory _PlaceFormState(
      {required Place place,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<PlaceFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_PlaceFormState;

  @override
  Place get place;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<PlaceFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$PlaceFormStateCopyWith<_PlaceFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
