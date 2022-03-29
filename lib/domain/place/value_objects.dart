import 'package:dartz/dartz.dart';
import 'package:sample_app/domain/core/failures.dart';
import 'package:sample_app/domain/core/value_validator.dart';
import 'package:sample_app/domain/core/values_objects.dart';

class PlaceTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PlaceTitle(String input) {
    assert(input != null);
    return PlaceTitle._(
      validateStringNotEmpty(input)
    );
  }
  const PlaceTitle._(this.value);
}

class PlaceLatitude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  factory PlaceLatitude(double input) {
    assert(input != null);
    return PlaceLatitude._(
      validateLatitudeNotEmpty(input)
    );
  }
  const PlaceLatitude._(this.value);
}

class PlaceLongitude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;
  factory PlaceLongitude(double input) {
    assert(input != null);
    return PlaceLongitude._(
      validateLongitudeNotEmpty(input)
    );
  }
  const PlaceLongitude._(this.value);
}

class PlaceImage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PlaceImage(String input) {
    assert(input != null);
    return PlaceImage._(
      validateImageFormat(input)
    );
  }
  const PlaceImage._(this.value);
}
