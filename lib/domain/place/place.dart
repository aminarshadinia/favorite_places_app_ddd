import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sample_app/domain/core/failures.dart';
import 'package:sample_app/domain/core/values_objects.dart';
import 'package:sample_app/domain/place/value_objects.dart';

part 'place.freezed.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required UniqueId id,
    required PlaceTitle title,
    required PlaceLatitude latitude,
    required PlaceLongitude longitude,
    required PlaceImage image,
  }) = _Place;

  factory Place.empty() => Place(
        id: UniqueId(),
        title: PlaceTitle(''),
        latitude: PlaceLatitude(0.0),
        longitude: PlaceLongitude(0.0),
        image: PlaceImage(''),
      );
}

extension PlaceX on Place {
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(image.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
