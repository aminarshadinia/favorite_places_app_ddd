import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:sample_app/domain/place/i_place_repository.dart';
import 'package:sample_app/domain/place/place_failure.dart';
import 'package:sample_app/domain/place/place.dart';
import 'package:sample_app/infrastructure/core/firestore_helpers.dart';
import 'package:sample_app/infrastructure/places/place_dtos.dart';

/*
  whenever we request an IPlaceRepository using the injectable package we are goin to reveive
  our _placeRepository from Place_stream_bloc which is its implementation
 */
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
}
