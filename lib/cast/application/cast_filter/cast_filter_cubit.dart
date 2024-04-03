import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_filter_cubit.freezed.dart';
part 'cast_filter_state.dart';

class CastFilterCubit extends Cubit<CastFilterState> {
  CastFilterCubit() : super(CastFilterState(field: "name", value: ""));

  void changeField(String value) {
    emit(state.copyWith(field: value, value: ""));
  }

  void changeValue(String value) {
    emit(state.copyWith(value: value));
  }
}
