import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/application/filter_state.dart';
import '../../core/application/paginated_items/paginated_items_cubit.dart';
import '../../core/presenation/app_colors.dart';
import '../../core/presenation/app_text_theme.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/page_scaffold.dart';
import '../../core/presenation/page_title.dart';
import '../../core/presenation/pagination_view.dart';
import '../../core/presenation/search_filter.dart';
import '../../core/presenation/text_tile.dart';
import '../../core/shared/constants.dart';
import '../application/location_cubit.dart';
import '../application/location_filter/location_filter_cubit.dart';
import '../domain/location.dart';

@RoutePage()
class LocationsPage extends StatefulWidget {
  const LocationsPage({super.key});

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  late final TextEditingController _searchController;
  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 42),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocConsumer<LocationFilterCubit, FilterState>(
              listenWhen: (previous, current) =>
                  previous.field != current.field,
              listener: (context, state) {
                _searchController.text = state.value;
                context.read<LocationCubit>().getFirstLocationPage();
              },
              builder: (context, state) {
                return SearchFilter(
                  controller: _searchController,
                  filter: kLocationFilters,
                  selectedFilter: state.field,
                  onFilterChanged:
                      context.read<LocationFilterCubit>().changeField,
                  onSearchTapped:
                      context.read<LocationCubit>().getFirstLocationPage,
                  onValueChanged:
                      context.read<LocationFilterCubit>().changeValue,
                );
              },
            ),
            24.vGap,
            const PageTitle(
              title: "All locations",
            ),
            16.vGap,
            Expanded(
              child: PaginationView<Location>(
                paginatedItemsCubit: context.read<LocationCubit>(),
                getNextPage: (context) {
                  context.read<LocationCubit>().getNextLocationPage();
                },
                refresh: (context) async {
                  await context.read<LocationCubit>().getFirstLocationPage();
                },
                child:
                    BlocBuilder<LocationCubit, PaginatedItemsState<Location>>(
                  builder: (context, state) {
                    return (state.when(
                      initial: (items) => false,
                      loadInProgress: (items) => false,
                      loadSuccess: (items, isNextPageAvailable) =>
                          items.entity.isEmpty,
                      loadFailure: (items, failure) => false,
                    ))
                        ? Center(
                            child: Text(
                              "There is no location.",
                              style: AppTextTheme.body1Strong
                                  .copyWith(color: Colors.white),
                            ),
                          )
                        : GridView.builder(
                            itemCount: state.map(
                              initial: (_) => 0,
                              loadInProgress: (_) => _.items.entity.length + 1,
                              loadSuccess: (_) => _.items.entity.length,
                              loadFailure: (_) => _.items.entity.length,
                            ),
                            physics: const AlwaysScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 24,
                              mainAxisExtent: 46,
                            ),
                            itemBuilder: (context, index) {
                              return state.map(
                                initial: (_) => TextTile(
                                  onTap: () {},
                                  title: "#${_.items.entity[index].id}",
                                  subtitle: _.items.entity[index].name,
                                ),
                                loadInProgress: (_) {
                                  if (index < _.items.entity.length) {
                                    return TextTile(
                                      onTap: () {},
                                      title: "#${_.items.entity[index].id}",
                                      subtitle: _.items.entity[index].name,
                                    );
                                  }
                                  return const Center(
                                    child: CircularProgressIndicator(
                                      color: AppColors.primary,
                                    ),
                                  );
                                },
                                loadSuccess: (_) => TextTile(
                                  onTap: () {},
                                  title: "#${_.items.entity[index].id}",
                                  subtitle: _.items.entity[index].name,
                                ),
                                loadFailure: (_) => TextTile(
                                  onTap: () {},
                                  title: "#${_.items.entity[index].id}",
                                  subtitle: _.items.entity[index].name,
                                ),
                              );
                            },
                          );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
