import '../domain/episode.dart';
import 'episode_dto.dart';

extension ListEpisodeX on List<EpisodeDTO> {
  List<Episode> toDomain() => map((e) => e.toDomain()).toList();
}
