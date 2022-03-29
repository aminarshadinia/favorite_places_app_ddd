
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/domain/core/failures.dart';
import 'package:sample_app/domain/core/value_validator.dart';
import 'package:sample_app/domain/core/values_objects.dart';
import 'package:sample_app/domain/place/value_objects.dart';
part 'user.freezed.dart';

@freezed

abstract class Userz with _$Userz {
  const factory Userz({
  required UniqueId id,
  }) = _Userz;
}


// extension UserzX on Userz {
//   Option<ValueFailure<dynamic>> get failureOption {
//     return id.failureOrUnit.fold((l) => some(l), (r) => none());
//   }
// }