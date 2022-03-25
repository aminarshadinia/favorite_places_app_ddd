// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceDTOTearOff {
  const _$PlaceDTOTearOff();

  _PlaceDTO call(
      {required String id,
      required String title,
      required Object location,
      required String image}) {
    return _PlaceDTO(
      id: id,
      title: title,
      location: location,
      image: image,
    );
  }
}

/// @nodoc
const $PlaceDTO = _$PlaceDTOTearOff();

/// @nodoc
mixin _$PlaceDTO {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Object get location => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceDTOCopyWith<PlaceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDTOCopyWith<$Res> {
  factory $PlaceDTOCopyWith(PlaceDTO value, $Res Function(PlaceDTO) then) =
      _$PlaceDTOCopyWithImpl<$Res>;
  $Res call({String id, String title, Object location, String image});
}

/// @nodoc
class _$PlaceDTOCopyWithImpl<$Res> implements $PlaceDTOCopyWith<$Res> {
  _$PlaceDTOCopyWithImpl(this._value, this._then);

  final PlaceDTO _value;
  // ignore: unused_field
  final $Res Function(PlaceDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Object,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlaceDTOCopyWith<$Res> implements $PlaceDTOCopyWith<$Res> {
  factory _$PlaceDTOCopyWith(_PlaceDTO value, $Res Function(_PlaceDTO) then) =
      __$PlaceDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, Object location, String image});
}

/// @nodoc
class __$PlaceDTOCopyWithImpl<$Res> extends _$PlaceDTOCopyWithImpl<$Res>
    implements _$PlaceDTOCopyWith<$Res> {
  __$PlaceDTOCopyWithImpl(_PlaceDTO _value, $Res Function(_PlaceDTO) _then)
      : super(_value, (v) => _then(v as _PlaceDTO));

  @override
  _PlaceDTO get _value => super._value as _PlaceDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? image = freezed,
  }) {
    return _then(_PlaceDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Object,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlaceDTO implements _PlaceDTO {
  const _$_PlaceDTO(
      {required this.id,
      required this.title,
      required this.location,
      required this.image});

  @override
  final String id;
  @override
  final String title;
  @override
  final Object location;
  @override
  final String image;

  @override
  String toString() {
    return 'PlaceDTO(id: $id, title: $title, location: $location, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$PlaceDTOCopyWith<_PlaceDTO> get copyWith =>
      __$PlaceDTOCopyWithImpl<_PlaceDTO>(this, _$identity);
}

abstract class _PlaceDTO implements PlaceDTO {
  const factory _PlaceDTO(
      {required String id,
      required String title,
      required Object location,
      required String image}) = _$_PlaceDTO;

  @override
  String get id;
  @override
  String get title;
  @override
  Object get location;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$PlaceDTOCopyWith<_PlaceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
