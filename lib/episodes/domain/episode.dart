import 'package:freezed_annotation/freezed_annotation.dart';

import '../infrastructure/episode_dto.dart';

part 'episode.freezed.dart';

@freezed
class Episode with _$Episode {
  const Episode._();
  factory Episode({
    required String id,
    required String name,
  }) = _Episode;

  EpisodeDTO toDTO() => EpisodeDTO(id: id, name: name);
}
