import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_app/domain/place/i_place_repository.dart';
import 'package:sample_app/domain/place/place.dart';
import 'package:sample_app/domain/place/place_failure.dart';

part 'place_actor_event.dart';
part 'place_actor_state.dart';
part 'place_actor_bloc.freezed.dart';

@injectable
class PlaceActorBloc extends Bloc<PlaceActorEvent, PlaceActorState> {
  final IPlaceRepository _placeRepository;
  PlaceActorBloc.actorBloc(this._placeRepository)
      : super(const PlaceActorState.initial());

  PlaceActorBloc(this._placeRepository)
      : super(const PlaceActorState.initial()) {
    on<PlaceActorEvent>((event, emit) {
      event.map(deleted: (e) async {
        print(e);
        const PlaceActorState.actionInProgress();
        final possibleFailure = await _placeRepository.delete(event.place);
        emit(possibleFailure.fold(
          (f) => PlaceActorState.deleteFailure(f),
          (_) => const PlaceActorState.deleteSuccess(),
        ));
      });
    });
  }
}
