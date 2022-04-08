import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_app/domain/place/i_place_repository.dart';
import 'package:sample_app/domain/place/place_failure.dart';
import 'package:sample_app/domain/place/place.dart';
import 'package:sample_app/infrastructure/core/firestore_helpers.dart';
import 'package:sample_app/infrastructure/places/place_dtos.dart';

@LazySingleton(as: IPlaceRepository)
class PlaceRepository implements IPlaceRepository {
  final FirebaseFirestore _firestore;

  PlaceRepository(this._firestore);

  @override
  Future<Either<PlaceFailure, Unit>> create(Place place) async {
    try {
      final userCollection = _firestore.collection('users');
      final placeDto = PlaceDTO.fromDomain(place);
      await userCollection.add(placeDto.toJson());
      // final userDoc = await _firestore.userDocument();
      // final placeDto = PlaceDTO.fromDomain(place);
      // await userDoc.set(placeDto.toJson(),  SetOptions(merge: true) );
      // await userDoc.placeCollection.doc(placeDto.id).set(placeDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const PlaceFailure.insufficientPermissions());
      } else {
        return left(const PlaceFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PlaceFailure, Unit>> update(Place place) async {
    try {
      final userDoc = await _firestore.userDocument();
      final placeDto = PlaceDTO.fromDomain(place);
      await userDoc.placeCollection.doc(placeDto.id).update(placeDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const PlaceFailure.insufficientPermissions());
      } else if (e.message!.contains('not-found')) {
        return left(const PlaceFailure.unableToUpdate());
      } else {
        return left(const PlaceFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PlaceFailure, Unit>> delete(String placeId) async {
    try {
      FirebaseFirestore.instance
        .collection('users')
        .where('id', isEqualTo: placeId)
        .get()
        .then((value) {
      return value.docs.forEach((element) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(element.id)
            .delete();
      });
    });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const PlaceFailure.insufficientPermissions());
      } else if (e.message!.contains('not-found')) {
        return left(const PlaceFailure.unableToUpdate());
      } else {
        return left(const PlaceFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<PlaceFailure, Place>> watchAll() async* {
    // final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('users').snapshots();
    final userDoc = await _firestore.userDocument();
    userDoc.placeCollection.snapshots().map(
          (snapshot) => right(
            snapshot.docs.map((doc) => doc),
          ),
        );
  }

  @override
  Stream<Either<PlaceFailure, Place>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }
}
