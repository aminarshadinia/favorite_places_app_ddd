part of 'place_form_bloc.dart';

@freezed
class PlaceFormState with _$PlaceFormState {
  const factory PlaceFormState({
    required Place place,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<PlaceFailure, Unit>> saveFailureOrSuccessOption,
  }) = _PlaceFormState;

  factory PlaceFormState.initial() => PlaceFormState(
        place: Place.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
