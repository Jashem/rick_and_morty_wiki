import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/infrastructure/info_dto.dart';
import '../domain/location.dart';
import 'location_dto.dart';
import 'extensions.dart';

part 'location_response_dto.freezed.dart';
part 'location_response_dto.g.dart';

@freezed
class LocationsDataDTO with _$LocationsDataDTO {
  factory LocationsDataDTO({
    required LocationsResponseDTO data,
  }) = _LocationsDataDTO;

  factory LocationsDataDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationsDataDTOFromJson(json);
}

@freezed
class LocationsResponseDTO with _$LocationsResponseDTO {
  factory LocationsResponseDTO({
    required LocationsDTO locations,
  }) = _LocationsResponseDTO;

  factory LocationsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationsResponseDTOFromJson(json);
}

@freezed
class LocationsDTO with _$LocationsDTO {
  const LocationsDTO._();
  factory LocationsDTO(
      {required InfoDTO info,
      required List<LocationDTO> results}) = _LocationsDTO;

  factory LocationsDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationsDTOFromJson(json);

  Locations toDomain() =>
      Locations(info: info.toDomain(), results: results.toDomain());
}
