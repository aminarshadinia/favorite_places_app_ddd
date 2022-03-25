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

class PlaceLocation extends ValueObject<Location> {
  @override
  final Either<ValueFailure<Location>, Location> value;
  factory PlaceLocation(Location input) {
    assert(input != null);
    return PlaceLocation._(
      validateLocationNotEmpty(input)
    );
  }
  const PlaceLocation._(this.value);
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
