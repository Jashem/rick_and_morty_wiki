import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/failure.dart';
import '../../domain/cast.dart';
import '../../infrastructure/cast_repository.dart';

part 'casts_carousal_state.dart';
part 'casts_carousal_cubit.freezed.dart';

class CastCarousalCubit extends Cubit<CastCarousalState> {
  CastCarousalCubit(this._repository)
      : super(const CastCarousalState.initial([]));
  final CastRepository _repository;

  Future<void> fetchInitialCasts() async {
    emit(CastCarousalState.loadInProgress(state.casts));
    final failureOrRepos = await _repository.getCasts();
    emit(failureOrRepos.fold(
      (l) => CastCarousalState.loadFailure(
        state.casts,
        l,
      ),
      (r) {
        return CastCarousalState.loadSuccess(
            r.entity.sublist(0, r.entity.length < 5 ? r.entity.length : 5));
      },
    ));
  }
}
