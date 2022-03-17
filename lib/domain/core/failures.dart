import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure {
  const factory ValueFailure.invalidEmail({
    required String faildValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required String faildValue,
  }) = ShortPassword<T>;
}
