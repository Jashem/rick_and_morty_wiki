import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';

@freezed
class Episode with _$Episode {
  factory Episode({
    required String id,
    required String name,
  }) = _Episode;
}
