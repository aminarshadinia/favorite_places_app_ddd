import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_dtos.freezed.dart';
part 'places_dtos.g.dart';


@JsonSerializable()
@freezed
class PlaceDTO with _$PlaceDTO {
  const factory PlaceDTO(
    {
      required String id,
      required String title,
      required Object location,
      required String image,
    }
  ) = _PlaceDTO;
}