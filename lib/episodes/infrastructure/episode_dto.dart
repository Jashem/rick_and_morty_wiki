import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/episode.dart';

part 'episode_dto.freezed.dart';
part 'episode_dto.g.dart';

@freezed
class EpisodeDTO with _$EpisodeDTO {
  const EpisodeDTO._();
  factory EpisodeDTO({required String id, String? name, String? episode}) =
      _EpisodeDTO;

  factory EpisodeDTO.fromJson(Map<String, dynamic> json) =>
      _$EpisodeDTOFromJson(json);

  Episode toDomain() =>
      Episode(id: id, name: name ?? "", episode: episode ?? "");
}
