import '../domain/episode.dart';
import 'episode_dto.dart';

extension ListEpisodeX on List<EpisodeDTO> {
  List<Episode> toDomain() => map((e) => e.toDomain()).toList();
}

extension ListEpisodeDTOX on List<Episode> {
  List<EpisodeDTO> toDTO() => map((e) => e.toDTO()).toList();
}
