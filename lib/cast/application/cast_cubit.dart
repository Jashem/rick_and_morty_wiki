import '../../core/application/paginated_items/paginated_items_cubit.dart';
import '../domain/cast.dart';
import '../infrastructure/cast_repository.dart';

class CastCubit extends PaginatedItemsCubit<Cast> {
  CastCubit(this._repository);

  final CastRepository _repository;

  Future<void> getFirstCstPage() async {
    super.resetState();
    await getNextCastPage();
  }

  Future<void> getNextCastPage() async {
    await super.getNextPage(
      (page) => _repository.getCasts(
        page: page,
      ),
    );
  }

  List<Cast> get firstFiveItems => state.items.entity.sublist(
      0, state.items.entity.length < 5 ? state.items.entity.length : 5);
}
