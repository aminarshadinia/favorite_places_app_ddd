// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceTearOff {
  const _$PlaceTearOff();

  _Place call(
      {required UniqueId id,
      required PlaceTitle title,
      required PlaceLatitude latitude,
      required PlaceLongitude longitude,
      required PlaceImage image}) {
    return _Place(
      id: id,
      title: title,
      latitude: latitude,
      longitude: longitude,
      image: image,
    );
  }
}

/// @nodoc
const $Place = _$PlaceTearOff();

/// @nodoc
mixin _$Place {
  UniqueId get id => throw _privateConstructorUsedError;
  PlaceTitle get title => throw _privateConstructorUsedError;
  PlaceLatitude get latitude => throw _privateConstructorUsedError;
  PlaceLongitude get longitude => throw _privateConstructorUsedError;
  PlaceImage get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      PlaceTitle title,
      PlaceLatitude latitude,
      PlaceLongitude longitude,
      PlaceImage image});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as PlaceTitle,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as PlaceLatitude,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as PlaceLongitude,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlaceImage,
    ));
  }
}

/// @nodoc
abstract class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) then) =
      __$PlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      PlaceTitle title,
      PlaceLatitude latitude,
      PlaceLongitude longitude,
      PlaceImage image});
}

/// @nodoc
class __$PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(_Place _value, $Res Function(_Place) _then)
      : super(_value, (v) => _then(v as _Place));

  @override
  _Place get _value => super._value as _Place;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? image = freezed,
  }) {
    return _then(_Place(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as PlaceTitle,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as PlaceLatitude,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as PlaceLongitude,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PlaceImage,
    ));
  }
}

/// @nodoc

class _$_Place implements _Place {
  const _$_Place(
      {required this.id,
      required this.title,
      required this.latitude,
      required this.longitude,
      required this.image});

  @override
  final UniqueId id;
  @override
  final PlaceTitle title;
  @override
  final PlaceLatitude latitude;
  @override
  final PlaceLongitude longitude;
  @override
  final PlaceImage image;

  @override
  String toString() {
    return 'Place(id: $id, title: $title, latitude: $latitude, longitude: $longitude, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Place &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$PlaceCopyWith<_Place> get copyWith =>
      __$PlaceCopyWithImpl<_Place>(this, _$identity);
}

abstract class _Place implements Place {
  const factory _Place(
      {required UniqueId id,
      required PlaceTitle title,
      required PlaceLatitude latitude,
      required PlaceLongitude longitude,
      required PlaceImage image}) = _$_Place;

  @override
  UniqueId get id;
  @override
  PlaceTitle get title;
  @override
  PlaceLatitude get latitude;
  @override
  PlaceLongitude get longitude;
  @override
  PlaceImage get image;
  @override
  @JsonKey(ignore: true)
  _$PlaceCopyWith<_Place> get copyWith => throw _privateConstructorUsedError;
}
