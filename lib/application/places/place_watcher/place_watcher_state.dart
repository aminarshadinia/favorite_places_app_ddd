part of 'place_watcher_bloc.dart';

@freezed
class PlaceWatcherState with _$PlaceWatcherState {
  const factory PlaceWatcherState.initial() = _Initial;
  const factory PlaceWatcherState.loadInProgress() = _LoadInProgress;
  const factory PlaceWatcherState.loadSuccess(Place place) = _LoadSuccess;
  const factory PlaceWatcherState.loadFailute(PlaceFailure placeFailure) = _LoadFailute;

}
