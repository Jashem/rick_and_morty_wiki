// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CastDTOImpl _$$CastDTOImplFromJson(Map<String, dynamic> json) =>
    _$CastDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      origin: json['origin'] == null
          ? null
          : LocationDTO.fromJson(json['origin'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationDTO.fromJson(json['location'] as Map<String, dynamic>),
      episode: (json['episode'] as List<dynamic>?)
          ?.map((e) => EpisodeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CastDTOImplToJson(_$CastDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'episode': instance.episode,
      'image': instance.image,
    };
