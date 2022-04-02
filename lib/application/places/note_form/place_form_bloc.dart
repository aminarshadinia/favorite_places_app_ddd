import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_app/domain/place/i_place_repository.dart';
import 'package:sample_app/domain/place/place.dart';
import 'package:sample_app/domain/place/place_failure.dart';
import 'package:sample_app/domain/place/value_objects.dart';

part 'place_form_event.dart';
part 'place_form_state.dart';
part 'place_form_bloc.freezed.dart';

@injectable
class PlaceFormBloc extends Bloc<PlaceFormEvent, PlaceFormState> {
  final IPlaceRepository _placeRepository;

  PlaceFormBloc.formBloc(this._placeRepository)
      : super(PlaceFormState.initial());

  PlaceFormBloc(this._placeRepository) : super(PlaceFormState.initial()) {
    on<PlaceFormEvent>((event, emit) {
      event.map(
        initialized: (e) async {
          emit(e.initialPlaceOption.fold(
            () => state,
            (initialPlace) => state.copyWith(
              place: initialPlace,
              isEditing: false,
            ),
          ));
        },
        titleChanged: (e) async {
          emit(
            state.copyWith(
              place: state.place.copyWith(title: PlaceTitle(e.titleStr)),
              saveFailureOrSuccessOption: none(), // reset to none
            ),
          );
        },
        imageChanged: (e) async {
          emit(
            state.copyWith(
              place: state.place.copyWith(image: PlaceImage(e.imageStr)),
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        latitudeChanged: (e) async {
          emit(
            state.copyWith(
              place: state.place
                  .copyWith(latitude: PlaceLatitude(e.latitudeDouble)),
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        longitudeChanged: (e) async {
          emit(
            state.copyWith(
              place: state.place
                  .copyWith(longitude: PlaceLongitude(e.longitudeDouble)),
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        saved: (e) async {
          Either<PlaceFailure,Unit>? failureOrSuccess;
          emit(
            state.copyWith(
              isSaving: true,
              saveFailureOrSuccessOption: none(),
            ),
          );
          if (state.place.failureOption.isNone()) {
            failureOrSuccess = state.isEditing
                ? await _placeRepository.update(state.place)
                : await _placeRepository.create(state.place);
          }
          emit(
            state.copyWith(
              isSaving: false,
              showErrorMessages: true,
              saveFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      );
    });
  }
}