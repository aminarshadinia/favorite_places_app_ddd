import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:sample_app/domain/core/errors.dart';
import 'package:sample_app/domain/core/failures.dart';

@immutable
// we make our class immutable so that we will enforce only final fields being present inside a Value Object
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;
  // inside an abstract class we can have getter instead of final.

  //code below throw UnExpectedValueError containing valueFailure
  T getOrCrash() {
    return value.fold(
        (valueFailure) => throw UnExpectedValueError(valueFailure), (r) => r);
  }
  //T is the value or type of the value which is held inside valueObject

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();
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

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // uuid generates truely unique ids
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

// we have to trust DB ids which are unique cuz we cannot validate them to be really unique
  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}
