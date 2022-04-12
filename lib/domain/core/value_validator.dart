import 'package:dartz/dartz.dart';

import '../core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  var emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(faildValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(faildValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(faildValue: input));
  }
}

Either<ValueFailure<double>, double> validateLatitudeNotEmpty(double input) {
  if (input != null) {
    return right(input);
  } else {
    return left(ValueFailure.emptyLatitude(faildValue: input));
  }
}

Either<ValueFailure<double>, double> validateLongitudeNotEmpty(double input) {
  if (input != null) {
    return right(input);
  } else {
    return left(ValueFailure.emptyLongitude(faildValue: input));
  }
}

Either<ValueFailure<String>, String> validateImageFormat(String input) {
  var imgUrlRegex =
      r"""(http)?s?:?(\/\/[^"']*\.(?:png|jpg|jpeg|gif|png|svg))""";
  if (RegExp(imgUrlRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.imageFormat(faildValue: input));
  }
}
