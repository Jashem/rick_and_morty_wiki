// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationsDataDTOImpl _$$LocationsDataDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationsDataDTOImpl(
      data: LocationsResponseDTO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationsDataDTOImplToJson(
        _$LocationsDataDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$LocationsResponseDTOImpl _$$LocationsResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationsResponseDTOImpl(
      locations:
          LocationsDTO.fromJson(json['locations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationsResponseDTOImplToJson(
        _$LocationsResponseDTOImpl instance) =>
    <String, dynamic>{
      'locations': instance.locations,
    };

_$LocationsDTOImpl _$$LocationsDTOImplFromJson(Map<String, dynamic> json) =>
    _$LocationsDTOImpl(
      info: InfoDTO.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => LocationDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocationsDTOImplToJson(_$LocationsDTOImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
