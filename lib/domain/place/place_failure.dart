import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_failure.freezed.dart';

@freezed
abstract class PlaceFailure with _$PlaceFailure {
  const factory PlaceFailure.unexpected() = _Unexpected;
  const factory PlaceFailure.insufficientPermissions() = InsufficientPermissions;
  const factory PlaceFailure.unableToUpdate() = UnableToUpdate;
}