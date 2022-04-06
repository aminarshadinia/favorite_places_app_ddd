part of 'place_actor_bloc.dart';

@freezed
class PlaceActorEvent with _$PlaceActorEvent {
  const factory PlaceActorEvent.deleted(String placeId) = _Deleted;
}