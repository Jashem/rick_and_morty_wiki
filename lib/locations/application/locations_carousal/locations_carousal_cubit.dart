import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/failure.dart';
import '../../domain/location.dart';
import '../../infrastracture/location_repository.dart';

part 'locations_carousal_state.dart';
part 'locations_carousal_cubit.freezed.dart';

class LocationCarousalCubit extends Cubit<LocationCarousalState> {
  LocationCarousalCubit(this._repository)
      : super(const LocationCarousalState.initial([]));
  final LocationRepository _repository;

  Future<void> fetchInitialLocations() async {
    emit(LocationCarousalState.loadInProgress(state.locations));
    final failureOrRepos = await _repository.getLocations();
    emit(failureOrRepos.fold(
      (l) => LocationCarousalState.loadFailure(
        state.locations,
        l,
      ),
      (r) {
        return LocationCarousalState.loadSuccess(
            r.entity.sublist(0, r.entity.length < 5 ? r.entity.length : 5));
      },
    ));
  }
}
