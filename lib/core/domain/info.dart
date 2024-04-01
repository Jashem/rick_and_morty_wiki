import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';

@freezed
class Info with _$Info {
  factory Info({
    required int count,
    required int pages,
  }) = _Info;
}
