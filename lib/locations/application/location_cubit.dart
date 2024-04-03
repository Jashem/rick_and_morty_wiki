import '../../core/application/paginated_items/paginated_items_cubit.dart';
import '../domain/location.dart';
import '../infrastracture/location_repository.dart';
import 'location_filter/location_filter_cubit.dart';

class LocationCubit extends PaginatedItemsCubit<Location> {
  LocationCubit(this._repository, this._filterCubit);

  final LocationRepository _repository;
  final LocationFilterCubit _filterCubit;

  Future<void> getFirstLocationPage() async {
    super.resetState();
    await getNextLocationPage();
  }

  Future<void> getNextLocationPage() async {
    await super.getNextPage(
      (page) => _repository.getLocations(
        page: page,
        filterField: _filterCubit.state.field,
        filterValue: _filterCubit.state.value,
      ),
    );
  }
}
