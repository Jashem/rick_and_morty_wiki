import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/presenation/cast_tile.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/list_header.dart';
import '../../core/presenation/routes/app_router.dart';
import '../application/casts_carousal/casts_carousal_cubit.dart';

class CastCarousalView extends StatelessWidget {
  const CastCarousalView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CastCarousalCubit, CastCarousalState>(
      builder: (context, state) {
        final items = state.casts;
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
    );
  }
}
