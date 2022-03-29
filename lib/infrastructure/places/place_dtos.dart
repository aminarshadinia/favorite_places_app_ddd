import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sample_app/domain/place/place.dart';

part 'place_dtos.freezed.dart';
part 'place_dtos.g.dart';

@freezed
@JsonSerializable()
abstract class PlaceDTO with _$PlaceDTO {
  const PlaceDTO._();

  const factory PlaceDTO({
    required String id,
    required String title,
    required double latitude,
    required double longitude,
    required String image,
    // required FieldValue serverTimeStamp,
  }) = _PlaceDTO;

  factory PlaceDTO.fromDomain(Place place) {
    return PlaceDTO(
      id: place.id.getOrCrash(),
      title: place.title.getOrCrash(),
      latitude: place.latitude.getOrCrash(),
      longitude: place.longitude.getOrCrash(),
      image: place.image.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),

    );
  }

  factory PlaceDTO.fromJson(Map<String, dynamic> json) =>
      _$PlaceDTOFromJson(json);
}
