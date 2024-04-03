// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodesDataDTOImpl _$$EpisodesDataDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodesDataDTOImpl(
      data: EpisodesResponseDTO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodesDataDTOImplToJson(
        _$EpisodesDataDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$EpisodesResponseDTOImpl _$$EpisodesResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$EpisodesResponseDTOImpl(
      episodes: EpisodesDTO.fromJson(json['episodes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpisodesResponseDTOImplToJson(
        _$EpisodesResponseDTOImpl instance) =>
    <String, dynamic>{
      'episodes': instance.episodes,
    };

_$EpisodesDTOImpl _$$EpisodesDTOImplFromJson(Map<String, dynamic> json) =>
    _$EpisodesDTOImpl(
      info: InfoDTO.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => EpisodeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EpisodesDTOImplToJson(_$EpisodesDTOImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
