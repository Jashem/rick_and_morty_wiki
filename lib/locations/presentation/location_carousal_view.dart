import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/presenation/gaps.dart';
import '../../core/presenation/list_header.dart';
import '../../core/presenation/routes/app_router.dart';
import '../../core/presenation/text_tile.dart';
import '../application/locations_carousal/locations_carousal_cubit.dart';

class LocationCarousalView extends StatelessWidget {
  const LocationCarousalView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCarousalCubit, LocationCarousalState>(
      builder: (context, state) {
        final items = state.locations;
        return items.isEmpty
            ? const SizedBox()
            : Column(
                children: [
                  ListHeader(
                    title: "Locations",
                    onViewAllTap: () {
                      context.navigateTo(const LocationsRoute());
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
                          title: "#${items[index].id}",
                          subtitle: items[index].name,
                        ),
                      ),
                      separatorBuilder: (context, index) => 15.hGap,
                      itemCount: items.length,
                    ),
                  ),
                  40.vGap,
                ],
              );
      },
    );
  }
}
