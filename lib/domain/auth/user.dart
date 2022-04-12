import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sample_app/domain/core/values_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class Userz with _$Userz {
  const factory Userz({
    required UniqueId id,
  }) = _Userz;
}
