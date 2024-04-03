import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/application/filter_state.dart';

class LocationFilterCubit extends Cubit<FilterState> {
  LocationFilterCubit() : super(FilterState(field: "name", value: ""));

  void changeField(String value) {
    emit(state.copyWith(field: value, value: ""));
  }

  void changeValue(String value) {
    emit(state.copyWith(value: value));
  }
}
