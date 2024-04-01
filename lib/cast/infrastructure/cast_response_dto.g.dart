// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharactersDataDTOImpl _$$CharactersDataDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CharactersDataDTOImpl(
      data:
          CharactersResponseDTO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CharactersDataDTOImplToJson(
        _$CharactersDataDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CharactersResponseDTOImpl _$$CharactersResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CharactersResponseDTOImpl(
      characters: CastsDTO.fromJson(json['characters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CharactersResponseDTOImplToJson(
        _$CharactersResponseDTOImpl instance) =>
    <String, dynamic>{
      'characters': instance.characters,
    };

_$CastsDTOImpl _$$CastsDTOImplFromJson(Map<String, dynamic> json) =>
    _$CastsDTOImpl(
      info: InfoDTO.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => CastDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CastsDTOImplToJson(_$CastsDTOImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
