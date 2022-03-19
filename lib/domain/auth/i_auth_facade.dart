import 'package:dartz/dartz.dart';

import '../auth/value_objects.dart';
import './auth_failure.dart';

// in this app what ever start with an "I" is going to have all the interface and no implementation present
// "Facade" is a design pattern which is used for connecting tw or more classes
abstract class IAuthFacade {
  Future <Either<AuthFailure,Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure,Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure,Unit>> signInWithGoogle();
  // Future<Either<AuthFailure,String>> returnString();
}
