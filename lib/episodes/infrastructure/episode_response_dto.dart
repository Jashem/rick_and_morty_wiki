import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/infrastructure/info_dto.dart';
import '../domain/episode.dart';
import 'episode_dto.dart';
import 'extensions.dart';

part 'episode_response_dto.freezed.dart';
part 'episode_response_dto.g.dart';

@freezed
class EpisodesDataDTO with _$EpisodesDataDTO {
  factory EpisodesDataDTO({
    required EpisodesResponseDTO data,
  }) = _EpisodesDataDTO;

  factory EpisodesDataDTO.fromJson(Map<String, dynamic> json) =>
      _$EpisodesDataDTOFromJson(json);
}

@freezed
class EpisodesResponseDTO with _$EpisodesResponseDTO {
  factory EpisodesResponseDTO({
    required EpisodesDTO episodes,
  }) = _EpisodesResponseDTO;

  factory EpisodesResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$EpisodesResponseDTOFromJson(json);
}

@freezed
class EpisodesDTO with _$EpisodesDTO {
  const EpisodesDTO._();
  factory EpisodesDTO(
      {required InfoDTO info,
      required List<EpisodeDTO> results}) = _EpisodesDTO;

  factory EpisodesDTO.fromJson(Map<String, dynamic> json) =>
      _$EpisodesDTOFromJson(json);

  Episodes toDomain() =>
      Episodes(info: info.toDomain(), results: results.toDomain());
}
