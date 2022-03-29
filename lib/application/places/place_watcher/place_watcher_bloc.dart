import 'package:bloc/bloc.dart';
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

  PlaceWatcherBloc(this._placeRepository)
      : super(const PlaceWatcherState.initial()) {
    on<PlaceWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(
              const PlaceWatcherState.loadInProgress(),
              // await _placeRepository.watchAll(),
              // _placeRepository.watchAll().map((failureOrPlaces) =>
              //     failureOrPlaces.fold(
              //       (f) => PlaceWatcherState.loadFailure(f),
              //         (places) => PlaceWatcherState.loadSuccess(places)
              //         )
              //         )
                      );
        },
        watchUncompleteStarted: (e) async {},
      );
    });
  }
}
