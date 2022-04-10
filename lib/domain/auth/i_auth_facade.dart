import 'package:dartz/dartz.dart';
import 'package:sample_app/domain/auth/user.dart';

import '../auth/value_objects.dart';
import './auth_failure.dart';
import './user.dart';

// in this app what ever start with an "I" is going to have all the interface and no implementation present
// "Facade" is a design pattern which is used for connecting tw or more classes
abstract class IAuthFacade {
  getSignedInUser();
  
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
      /*
       * we use "Unit" instead of void.
       * unlike swift and kotlin in dart "void" is not a class but a keyword so we need to use
       * Unit to avoid error that might happen later enenthough we dont get a syntax error at the moment
       */

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
