
// interface only holds methods defenitions and not going to hold implementation thats why we call it an interface
import 'package:dartz/dartz.dart';
import 'package:sample_app/domain/place/place.dart';
import 'package:sample_app/domain/place/place_failure.dart';

abstract class IPlaceRepository {
  Stream<Either<PlaceFailure, Place>> watchAll();
  Stream<Either<PlaceFailure, Place>> watchUncompleted();
  Future<Either<PlaceFailure , Unit>> create(Place place);  
  Future<Either<PlaceFailure , Unit>> update(Place place);  
  Future<Either<PlaceFailure , Unit>> delete(String placeId);  
}