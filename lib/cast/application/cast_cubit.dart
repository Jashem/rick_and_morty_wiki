import '../../core/application/paginated_items/paginated_items_cubit.dart';
import '../domain/cast.dart';
import '../infrastructure/cast_repository.dart';
import 'cast_filter/cast_filter_cubit.dart';

class CastCubit extends PaginatedItemsCubit<Cast> {
  CastCubit(this._repository, this._filterCubit);

  final CastRepository _repository;
  final CastFilterCubit _filterCubit;

  Future<void> getFirstCstPage() async {
    super.resetState();
    await getNextCastPage();
  }

  Future<void> getNextCastPage() async {
    await super.getNextPage(
      (page) => _repository.getCasts(
        page: page,
        filterField: _filterCubit.state.field,
        filterValue: _filterCubit.state.value,
      ),
    );
  }

  List<Cast> get firstFiveItems => state.items.entity.sublist(
      0, state.items.entity.length < 5 ? state.items.entity.length : 5);
}
