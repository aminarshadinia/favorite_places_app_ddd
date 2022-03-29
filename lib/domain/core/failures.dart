import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T faildValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T faildValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.empty({
    required T faildValue,
  }) = Empty<T>;

  const factory ValueFailure.emptyLatitude({
    required T faildValue,
  }) = EmptyLatitude<T>;
  
  const factory ValueFailure.emptyLongitude({
    required T faildValue,
  }) = EmptyLongitude<T>;

  const factory ValueFailure.imageFormat({
    required T faildValue,
  }) = ImageFormat<T>;

}
