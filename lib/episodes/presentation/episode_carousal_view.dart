import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/presenation/gaps.dart';
import '../../core/presenation/list_header.dart';
import '../../core/presenation/routes/app_router.dart';
import '../../core/presenation/text_tile.dart';
import '../application/episodes_carousal/episodes_carousal_cubit.dart';

class EpisodeCarousalView extends StatelessWidget {
  const EpisodeCarousalView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeCarousalCubit, EpisodeCarousalState>(
      builder: (context, state) {
        final items = state.episodes;
        return items.isEmpty
            ? const SizedBox()
            : Column(
                children: [
                  ListHeader(
                    title: "Episodes",
                    onViewAllTap: () {
                      context.navigateTo(const EpisodesRoute());
                    },
                  ),
                  SizedBox(
                    height: 46,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SizedBox(
                        width: 177,
                        child: TextTile(
                          onTap: () {},
                          title: items[index].episode,
                          subtitle: items[index].name,
                        ),
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
