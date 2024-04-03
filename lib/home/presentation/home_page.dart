import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cast/application/casts_carousal/casts_carousal_cubit.dart';
import '../../cast/infrastructure/cast_repository.dart';
import '../../cast/presentation/cast_carousal_view.dart';
import '../../core/presenation/page_scaffold.dart';
import '../../core/shared/dependency_injection.dart';
import '../../episodes/application/episodes_carousal/episodes_carousal_cubit.dart';
import '../../episodes/infrastructure/episode_repository.dart';
import '../../episodes/presentation/episode_carousal_view.dart';
import '../../favourite_cast/presentation/favourite_carousal_view.dart';
import '../../locations/application/locations_carousal/locations_carousal_cubit.dart';
import '../../locations/infrastracture/location_repository.dart';
import '../../locations/presentation/location_carousal_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CastCarousalCubit(di.get<CastRepository>())..fetchInitialCasts(),
        ),
        BlocProvider(
          create: (context) => EpisodeCarousalCubit(di.get<EpisodeRepository>())
            ..fetchInitialEpisodes(),
        ),
        BlocProvider(
          create: (context) =>
              LocationCarousalCubit(di.get<LocationRepository>())
                ..fetchInitialLocations(),
        ),
      ],
      child: const PageScaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 42,
            bottom: kToolbarHeight + 24,
          ),
          child: Column(
            children: [
              FavouriteCarousalView(),
              CastCarousalView(),
              LocationCarousalView(),
              EpisodeCarousalView(),
            ],
          ),
        ),
      ),
    );
  }
}
