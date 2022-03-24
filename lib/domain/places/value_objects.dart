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
