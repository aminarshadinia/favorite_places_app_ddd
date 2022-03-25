
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/domain/core/value_validator.dart';
import 'package:sample_app/domain/core/values_objects.dart';
import 'package:sample_app/domain/places/value_objects.dart';
part 'place.freezed.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    required UniqueId id,
    required PlaceTitle title,
    required PlaceLocation location,
    required PlaceImage image,
  }) = _Place;

  factory Place.empty() => Place (
    id: UniqueId(),
    title: PlaceTitle(''),
    location: PlaceLocation(Location(0.0, 0.0)),
    image: PlaceImage(''),
  );
}
