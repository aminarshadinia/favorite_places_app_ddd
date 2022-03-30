import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_app/domain/place/i_place_repository.dart';
import 'package:sample_app/domain/place/place.dart';
import 'package:sample_app/domain/place/place_failure.dart';

part 'place_watcher_event.dart';
part 'place_watcher_state.dart';
part 'place_watcher_bloc.freezed.dart';

@injectable
class PlaceWatcherBloc extends Bloc<PlaceWatcherEvent, PlaceWatcherState> {
  final IPlaceRepository _placeRepository;

  PlaceWatcherBloc.watcherBloc(this._placeRepository)
      : super(const PlaceWatcherState.initial());

  late StreamSubscription<Either<PlaceFailure, Place>> _placeStreamSubscription;

  PlaceWatcherBloc(this._placeRepository)
      : super(const PlaceWatcherState.initial()) {
    on<PlaceWatcherEvent>(
      (event, emit) async {
        await event.map(
          watchAllStarted: (e) async {
            emit(const PlaceWatcherState.loadInProgress());
            // await _placeStreamSubscription.cancel();
            _placeStreamSubscription = _placeRepository.watchAll().listen(
                (notes) => add(const PlaceWatcherEvent.watchAllStarted()));
          },
          watchUncompleteStarted: (e) async {},
          placesReceived: (e) async {
            emit(
              e.failureOrPlaces.fold(
                (f) => PlaceWatcherState.loadFailure(f),
                (places) => PlaceWatcherState.loadSuccess(places),
              ),
            );
          },
        );
      },
    );
  }
}
