// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserzTearOff {
  const _$UserzTearOff();

  _Userz call({required UniqueId id}) {
    return _Userz(
      id: id,
    );
  }
}

/// @nodoc
const $Userz = _$UserzTearOff();

/// @nodoc
mixin _$Userz {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserzCopyWith<Userz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserzCopyWith<$Res> {
  factory $UserzCopyWith(Userz value, $Res Function(Userz) then) =
      _$UserzCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$UserzCopyWithImpl<$Res> implements $UserzCopyWith<$Res> {
  _$UserzCopyWithImpl(this._value, this._then);

  final Userz _value;
  // ignore: unused_field
  final $Res Function(Userz) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$UserzCopyWith<$Res> implements $UserzCopyWith<$Res> {
  factory _$UserzCopyWith(_Userz value, $Res Function(_Userz) then) =
      __$UserzCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$UserzCopyWithImpl<$Res> extends _$UserzCopyWithImpl<$Res>
    implements _$UserzCopyWith<$Res> {
  __$UserzCopyWithImpl(_Userz _value, $Res Function(_Userz) _then)
      : super(_value, (v) => _then(v as _Userz));

  @override
  _Userz get _value => super._value as _Userz;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Userz(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_Userz implements _Userz {
  const _$_Userz({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'Userz(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Userz &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$UserzCopyWith<_Userz> get copyWith =>
      __$UserzCopyWithImpl<_Userz>(this, _$identity);
}

abstract class _Userz implements Userz {
  const factory _Userz({required UniqueId id}) = _$_Userz;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$UserzCopyWith<_Userz> get copyWith => throw _privateConstructorUsedError;
}
