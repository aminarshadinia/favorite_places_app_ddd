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
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
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
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PlaceFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const PlaceFailure.unableToUpdate());
      } else {
        return left(const PlaceFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PlaceFailure, Unit>> delete(Place place) async {
    try {
      final userDoc = await _firestore.userDocument();
      final placeId = place.id.getOrCrash();
      await userDoc.placeCollection.doc(placeId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PlaceFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const PlaceFailure.unableToUpdate());
      } else {
        return left(const PlaceFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<PlaceFailure, Place>> watchAll() async* {
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('users').snapshots();
  }

  @override
  Stream<Either<PlaceFailure, Place>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }
}
