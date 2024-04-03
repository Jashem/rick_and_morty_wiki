import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/domain/info.dart';
import '../infrastructure/episode_dto.dart';

part 'episode.freezed.dart';

@freezed
class Episode with _$Episode {
  const Episode._();
  factory Episode({
    required String id,
    required String name,
    required String episode,
  }) = _Episode;

  EpisodeDTO toDTO() => EpisodeDTO(id: id, name: name, episode: episode);
}

@freezed
class Episodes with _$Episodes {
  const Episodes._();
  factory Episodes({required Info info, required List<Episode> results}) =
      _Episodes;
}
