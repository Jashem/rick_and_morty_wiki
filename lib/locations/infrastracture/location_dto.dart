import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/location.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
class LocationDTO with _$LocationDTO {
  const LocationDTO._();
  factory LocationDTO({String? name}) = _LocationDTO;

  factory LocationDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationDTOFromJson(json);

  Location toDomain() => Location(name: name ?? "");
}
