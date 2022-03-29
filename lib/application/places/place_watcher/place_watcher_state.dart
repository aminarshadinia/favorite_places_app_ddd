part of 'place_watcher_bloc.dart';

@freezed
class PlaceWatcherState with _$PlaceWatcherState {
  const factory PlaceWatcherState.initial() = _Initial;
  const factory PlaceWatcherState.loadInProgress() = _LoadInProgress;
  // we split Either type into our own Union cases below
  const factory PlaceWatcherState.loadSuccess(Place place) = _LoadSuccess;
  const factory PlaceWatcherState.loadFailure(PlaceFailure placeFailure) = _LoadFailure;
}
