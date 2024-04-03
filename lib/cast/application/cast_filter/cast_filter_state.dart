part of 'cast_filter_cubit.dart';

@freezed
class CastFilterState with _$CastFilterState {
  factory CastFilterState({
    required String field,
    required String value,
  }) = _CastFilterState;
}
