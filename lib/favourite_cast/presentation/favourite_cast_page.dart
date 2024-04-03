import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/application/filter_state.dart';
import '../../core/presenation/app_colors.dart';
import '../../core/presenation/app_text_theme.dart';
import '../../core/presenation/cast_tile.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/page_scaffold.dart';
import '../../core/presenation/page_title.dart';
import '../../core/presenation/search_filter.dart';
import '../../core/shared/constants.dart';
import '../application/favourite_cast_bloc.dart';
import '../application/favourite_cast_filter/cast_filter_cubit.dart';

@RoutePage()
class FavouriteCastPage extends StatefulWidget {
  const FavouriteCastPage({super.key});

  @override
  State<FavouriteCastPage> createState() => _FavouriteCastPageState();
}

class _FavouriteCastPageState extends State<FavouriteCastPage> {
  late final TextEditingController _searchController;
  @override
  void initState() {
    _searchController = TextEditingController(
      text: context.read<FavouriteCastFilterCubit>().state.value,
    );
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
            BlocConsumer<FavouriteCastFilterCubit, FilterState>(
              listenWhen: (previous, current) =>
                  previous.field != current.field,
              listener: (context, state) {
                _searchController.text = state.value;
                context
                    .read<FavouriteCastBloc>()
                    .add(const FavouriteCastEvent.fetchedAll());
              },
              builder: (context, state) {
                return SearchFilter(
                  controller: _searchController,
                  filter: kCastFilters,
                  selectedFilter: state.field,
                  onFilterChanged:
                      context.read<FavouriteCastFilterCubit>().changeField,
                  onSearchTapped: () {
                    context
                        .read<FavouriteCastBloc>()
                        .add(const FavouriteCastEvent.fetchedAll());
                  },
                  onValueChanged:
                      context.read<FavouriteCastFilterCubit>().changeValue,
                );
              },
            ),
            24.vGap,
            const PageTitle(
              title: "Favourites",
            ),
            16.vGap,
            Expanded(
              child: BlocBuilder<FavouriteCastBloc, FavouriteCastState>(
                builder: (context, state) {
                  return (state.when(
                    initial: (items, _) => false,
                    loadInProgress: (items, _) => false,
                    loadSuccess: (items, _) => items.isEmpty,
                    loadFailure: (items, _, failure) => false,
                  ))
                      ? Center(
                          child: Text(
                            "There is no favourite.",
                            style: AppTextTheme.body1Strong
                                .copyWith(color: Colors.white),
                          ),
                        )
                      : GridView.builder(
                          itemCount: state.map(
                            initial: (_) => 0,
                            loadInProgress: (_) => _.casts.length + 1,
                            loadSuccess: (_) => _.casts.length,
                            loadFailure: (_) => _.casts.length,
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
                                cast: _.casts[index],
                              ),
                              loadInProgress: (_) {
                                if (index < _.casts.length) {
                                  return CastTile(
                                    padding: const EdgeInsets.all(10),
                                    cast: _.casts[index],
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
                                cast: _.casts[index],
                              ),
                              loadFailure: (_) => CastTile(
                                padding: const EdgeInsets.all(10),
                                cast: _.casts[index],
                              ),
                            );
                          },
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
