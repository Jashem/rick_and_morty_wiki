import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cast/application/cast_cubit.dart';
import '../../cast/domain/cast.dart';
import '../../core/application/paginated_items/paginated_items_cubit.dart';
import '../../core/presenation/cast_tile.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/page_scaffold.dart';
import '../../core/presenation/routes/app_router.dart';
import '../../core/presenation/text_tile.dart';
import '../../favourite_cast/application/favourite_cast_bloc.dart';
import 'list_header.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 42,
          bottom: kToolbarHeight + 24,
        ),
        child: Column(
          children: [
            BlocBuilder<FavouriteCastBloc, FavouriteCastState>(
              builder: (context, state) {
                final items =
                    context.read<FavouriteCastBloc>().state.firstFiveItems;
                return items.isEmpty
                    ? const SizedBox()
                    : Column(
                        children: [
                          ListHeader(
                            title: "Favourites",
                            onViewAllTap: () {
                              context.navigateTo(const FavouriteCastRoute());
                            },
                          ),
                          SizedBox(
                            height: 137,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => CastTile(
                                cast: items[index],
                              ),
                              separatorBuilder: (context, index) => 15.hGap,
                              itemCount: items.length,
                            ),
                          ),
                          42.vGap,
                        ],
                      );
              },
            ),
            BlocBuilder<CastCubit, PaginatedItemsState<Cast>>(
              builder: (context, state) {
                final items = context.read<CastCubit>().firstFiveItems;
                return items.isEmpty
                    ? const SizedBox()
                    : Column(
                        children: [
                          ListHeader(
                            title: "Meet the cast",
                            onViewAllTap: () {
                              context.navigateTo(const CastRoute());
                            },
                          ),
                          SizedBox(
                            height: 137,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => CastTile(
                                cast: items[index],
                              ),
                              separatorBuilder: (context, index) => 15.hGap,
                              itemCount: items.length,
                            ),
                          ),
                        ],
                      );
              },
            ),
            40.vGap,
            ListHeader(
              title: "Locations",
              onViewAllTap: () {},
            ),
            SizedBox(
              height: 46,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SizedBox(
                  width: 177,
                  child: TextTile(
                    onTap: () {},
                    title: "#1",
                    subtitle: "Earth (C-137)",
                  ),
                ),
                separatorBuilder: (context, index) => 24.hGap,
                itemCount: 5,
              ),
            ),
            40.vGap,
            ListHeader(
              title: "Episodes",
              onViewAllTap: () {},
            ),
            SizedBox(
              height: 46,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SizedBox(
                  width: 177,
                  child: TextTile(
                    onTap: () {},
                    title: "S01 E01",
                    subtitle: "Pilot",
                  ),
                ),
                separatorBuilder: (context, index) => 24.hGap,
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
