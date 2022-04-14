import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:sample_app/domain/core/values_objects.dart';
import 'package:sample_app/domain/place/place.dart';
import 'package:sample_app/domain/place/value_objects.dart';

part 'place_dtos.freezed.dart';
part 'place_dtos.g.dart';

@freezed
@JsonSerializable()
class PlaceDTO with _$PlaceDTO {
  const factory PlaceDTO({
    required String id,
    required String title,
    required double latitude,
    required double longitude,
    required String image,
  }) = _PlaceDTO;

  factory PlaceDTO.fromDomain(Place place) {
    return PlaceDTO(
      id: place.id.getOrCrash(),
      title: place.title.getOrCrash(),
      latitude: place.latitude.getOrCrash(),
      longitude: place.longitude.getOrCrash(),
      image: place.image.getOrCrash(),
    );
  }

  factory PlaceDTO.fromJson(Map<String, dynamic> json) =>
      _$PlaceDTOFromJson(json);

  factory PlaceDTO.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return PlaceDTO.fromJson(doc.data()!).copyWith(id: doc.id);
  }
}

extension PlaceDTOX on PlaceDTO {
  Place toDomain() {
    return Place(
      id: UniqueId.fromUniqueString(id),
      title: PlaceTitle(title),
      image: PlaceImage(image),
      latitude: PlaceLatitude(latitude),
      longitude: PlaceLongitude(longitude),
    );
  }
}
