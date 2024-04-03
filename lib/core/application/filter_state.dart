import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_state.freezed.dart';

@freezed
class FilterState with _$FilterState {
  factory FilterState({
    required String field,
    required String value,
  }) = _FilterState;
}
