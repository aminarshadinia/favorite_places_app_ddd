// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


Map<String, dynamic> _$PlaceDTOToJson(PlaceDTO instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'image': instance.image,
    };

_$_PlaceDTO _$$_PlaceDTOFromJson(Map<String, dynamic> json) => _$_PlaceDTO(
      id: json['id'] as String,
      title: json['title'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_PlaceDTOToJson(_$_PlaceDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'image': instance.image,
    };
