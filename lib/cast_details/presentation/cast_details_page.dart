import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../cast/domain/cast.dart';
import '../../core/presenation/app_text_theme.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/gradient_box.dart';
import '../../core/presenation/image_assets.dart';
import '../../core/presenation/page_scaffold.dart';
import '../../core/presenation/page_title.dart';
import 'info_card.dart';

@RoutePage()
class CastDetailsPage extends StatelessWidget {
  const CastDetailsPage({super.key, required this.cast});
  final Cast cast;

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
          bottom: kToolbarHeight + 24,
        ),
        child: Column(
          children: [
            PageTitle(title: cast.name),
            20.vGap,
            GradientBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    cast.image,
                    height: 180,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            16.vGap,
            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    iconPath: ImageAssets.status,
                    title: "Status",
                    subtitle: cast.status,
                  ),
                ),
                16.hGap,
                Expanded(
                  child: InfoCard(
                    iconPath: ImageAssets.species,
                    title: "Species",
                    subtitle: cast.species,
                  ),
                ),
                16.hGap,
                Expanded(
                  child: InfoCard(
                    iconPath: ImageAssets.gender,
                    title: "Gender",
                    subtitle: cast.gender,
                  ),
                ),
              ],
            ),
            15.vGap,
            SizedBox(
              width: double.maxFinite,
              child: InfoCard(
                iconPath: ImageAssets.origin,
                title: "Origin",
                subtitle: cast.origin.name,
              ),
            ),
            15.vGap,
            SizedBox(
              width: double.maxFinite,
              child: InfoCard(
                iconPath: ImageAssets.location,
                title: "Last Known Location",
                subtitle: cast.location.name,
              ),
            ),
            15.vGap,
            SizedBox(
              width: double.maxFinite,
              child: InfoCard(
                iconPath: ImageAssets.episode,
                title: "Episode(s)",
                subtitleWidget: Column(
                  children: [
                    8.vGap,
                    ...cast.episode.map((e) => Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            8.hGap,
                            Flexible(
                              child: Text(
                                e.name,
                                style: AppTextTheme.body1.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
