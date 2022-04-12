part of 'place_actor_bloc.dart';

@freezed
class PlaceActorState with _$PlaceActorState {
  const factory PlaceActorState.initial() = _Initial;
  const factory PlaceActorState.actionInProgress() = _ActionInProgress;
  const factory PlaceActorState.deleteFailure(PlaceFailure placeFailure) = _DeleteFailure;
  const factory PlaceActorState.deleteSuccess() = _DeleteSuccess;
}
