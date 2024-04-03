import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/application/paginated_items/paginated_items_cubit.dart';
import '../../core/presenation/app_colors.dart';
import '../../core/presenation/app_text_theme.dart';
import '../../core/presenation/cast_tile.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/page_scaffold.dart';
import '../../core/presenation/page_title.dart';
import '../../core/presenation/pagination_view.dart';
import '../../core/presenation/search_filter.dart';
import '../application/cast_cubit.dart';
import '../application/cast_filter/cast_filter_cubit.dart';
import '../domain/cast.dart';

@RoutePage()
class CastPage extends StatefulWidget {
  const CastPage({super.key});

  @override
  State<CastPage> createState() => _CastPageState();
}

class _CastPageState extends State<CastPage> {
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
            BlocConsumer<CastFilterCubit, CastFilterState>(
              listenWhen: (previous, current) =>
                  previous.field != current.field,
              listener: (context, state) {
                _searchController.text = state.value;
                context.read<CastCubit>().getFirstCstPage();
              },
              builder: (context, state) {
                return SearchFilter(
                  controller: _searchController,
                  filter: const [
                    "name",
                    "status",
                    "species",
                    "type",
                    "gender",
                  ],
                  selectedFilter: state.field,
                  onFilterChanged: context.read<CastFilterCubit>().changeField,
                  onSearchTapped: context.read<CastCubit>().getFirstCstPage,
                  onValueChanged: context.read<CastFilterCubit>().changeValue,
                );
              },
            ),
            24.vGap,
            const PageTitle(
              title: "All Cast",
            ),
            16.vGap,
            Expanded(
              child: PaginationView<Cast>(
                paginatedItemsCubit: context.read<CastCubit>(),
                getNextPage: (context) {
                  context.read<CastCubit>().getNextCastPage();
                },
                refresh: (context) async {
                  await context.read<CastCubit>().getFirstCstPage();
                },
                child: BlocBuilder<CastCubit, PaginatedItemsState<Cast>>(
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
                              "There is no cast.",
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
                              mainAxisExtent: 181,
                            ),
                            itemBuilder: (context, index) {
                              return state.map(
                                initial: (_) => CastTile(
                                  padding: const EdgeInsets.all(10),
                                  cast: _.items.entity[index],
                                ),
                                loadInProgress: (_) {
                                  if (index < _.items.entity.length) {
                                    return CastTile(
                                      padding: const EdgeInsets.all(10),
                                      cast: _.items.entity[index],
                                    );
                                  }
                                  return const Center(
                                    child: CircularProgressIndicator(
                                      color: AppColors.primary,
                                    ),
                                  );
                                },
                                loadSuccess: (_) => CastTile(
                                  padding: const EdgeInsets.all(10),
                                  cast: _.items.entity[index],
                                ),
                                loadFailure: (_) => CastTile(
                                  padding: const EdgeInsets.all(10),
                                  cast: _.items.entity[index],
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
