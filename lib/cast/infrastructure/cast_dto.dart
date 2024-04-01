import 'package:freezed_annotation/freezed_annotation.dart';

import '../../episodes/infrastructure/episode_dto.dart';
import '../../episodes/infrastructure/extensions.dart';
import '../../locations/domain/location.dart';
import '../../locations/infrastracture/location_dto.dart';
import '../domain/cast.dart';

part 'cast_dto.freezed.dart';
part 'cast_dto.g.dart';

@freezed
class CastDTO with _$CastDTO {
  const CastDTO._();

  factory CastDTO({
    required String id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    LocationDTO? origin,
    LocationDTO? location,
    List<EpisodeDTO>? episode,
    String? image,
  }) = _CastDTO;

  factory CastDTO.fromJson(Map<String, dynamic> json) =>
      _$CastDTOFromJson(json);

  Cast toDomain() => Cast(
        id: id,
        name: name ?? "",
        status: status ?? "",
        species: species ?? "",
        type: type ?? "",
        gender: gender ?? "",
        origin: origin?.toDomain() ?? Location(name: ""),
        location: location?.toDomain() ?? Location(name: ""),
        episode: episode?.toDomain() ?? [],
        image: image ?? "",
      );
}
