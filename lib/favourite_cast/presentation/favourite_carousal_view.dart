import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/presenation/cast_tile.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/list_header.dart';
import '../../core/presenation/routes/app_router.dart';
import '../application/favourite_cast_bloc.dart';

class FavouriteCarousalView extends StatelessWidget {
  const FavouriteCarousalView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCastBloc, FavouriteCastState>(
      builder: (context, state) {
        final items = state.firstFiveItems;
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
    );
  }
}
