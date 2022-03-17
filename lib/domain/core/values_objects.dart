import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/domain/core/failures.dart';

@immutable
// we make our class immutable so that we will enforce only final fields being present inside a Value Object
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;
  // inside an abstract class we can have getter instead of final.

  bool isValid () => value.isRight();
  // this is a helper method to indicate whther value is valid or not and be used in signif form bloc

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => 'Value(v$value)';
}
