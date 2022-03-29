part of 'place_watcher_bloc.dart';

@freezed
class PlaceWatcherEvent with _$PlaceWatcherEvent {
  const factory PlaceWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory PlaceWatcherEvent.watchUncompleteStarted() = _WatchUncompleteStarted;
}