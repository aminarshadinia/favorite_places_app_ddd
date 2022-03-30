import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_app/domain/auth/auth_failure.dart';
import 'package:sample_app/domain/auth/i_auth_facade.dart';
import 'package:sample_app/domain/auth/value_objects.dart';
import 'package:sample_app/domain/core/values_objects.dart';
import 'package:sample_app/infrastructure/auth/firebase_user_mapper.dart';
import '../../domain/auth/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;
  // User? currentUser = FirebaseAuth?.instance.currentUser;
// var currUser = FirebaseAuth.instance.currentUser;

  FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn, this._firebaseUserMapper);

  //  @override
  // Future<Option<Userz>> getSignedInUser() async => _firebaseAuth!.currentUser!.then((u) => optionOf(_firebaseUserMapper.toDomain(u)));

  @override
  getSignedInUser() {
    if (_firebaseAuth.currentUser != null) {
      final user = _firebaseAuth.currentUser;
      // print(user?.uid);
      return some(Userz(id: UniqueId?.formUniqueString(user!.uid)));
    }
  }

  // @override
  // Future<Option<Userz>>? getSignedInUser() => _firebaseAuth.currentUser != null
  //     ? (u) => optionOf(_firebaseUserMapper.toDomain(u)) :  ;
      

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    // _firebaseAuth.currentUser().then((value) => value.uid);
    // invalid email and weak password are handled before in login page
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    // print(_firebaseAuth.currentUser);
    // print(_firebaseAuth.currentUser?.email);
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    // invalid email and weak password are handled before in login page
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredentil = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredentil)
          .then((r) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait({
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      });
}
