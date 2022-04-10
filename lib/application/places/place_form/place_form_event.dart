part of 'place_form_bloc.dart';

@freezed
class PlaceFormEvent with _$PlaceFormEvent {
  const factory PlaceFormEvent.initialized(Option<Place> initialPlaceOption) = _Initialized;
  const factory PlaceFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory PlaceFormEvent.imageChanged(String imageStr) = _ImageChanged;
  const factory PlaceFormEvent.latitudeChanged(double latitudeDouble) = _LatitudeChanged;
  const factory PlaceFormEvent.longitudeChanged(double longitudeDouble) = _LongitudeChanged;
  const factory PlaceFormEvent.saved() = _Saved;

}