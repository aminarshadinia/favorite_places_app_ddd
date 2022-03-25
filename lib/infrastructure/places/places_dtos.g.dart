// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDTO _$PlaceDTOFromJson(Map<String, dynamic> json) => PlaceDTO(
      id: json['id'] as String,
      title: json['title'] as String,
      location: json['location'] as Object,
      image: json['image'] as String,
    );

Map<String, dynamic> _$PlaceDTOToJson(PlaceDTO instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'image': instance.image,
    };
