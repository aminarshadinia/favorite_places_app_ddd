import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/failures.dart';
import '../core/value_validator.dart';
import '../core/values_objects.dart';

// "making illegal states unrepresentable"

class EmailAddress extends ValueObject<String> {
  // in order to create value equality to EmailAdreses i used "dart data class extension"
  final Either<ValueFailure<String>, String> value;
  //the most straightforward way of validating at instantiating time is to create "factory constructor",
  factory EmailAddress(String input) {
    assert(input != null); //validate that input is not null
    return EmailAddress._(
      // we can call this function right from the constructor parameters cuz our validateEmail func returns String also our Private constructor Accepts String.
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    assert(input != null);
    return Password._(
      validateEmailAddress(input),
    );
  }

  const Password._(this.value);

}



