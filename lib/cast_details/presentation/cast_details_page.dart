import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/presenation/app_text_theme.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/gradient_box.dart';
import '../../core/presenation/image_assets.dart';
import '../../core/presenation/page_scaffold.dart';
import '../../core/presenation/page_title.dart';
import 'info_card.dart';

@RoutePage()
class CastDetailsPage extends StatelessWidget {
  const CastDetailsPage({super.key});

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
            const PageTitle(title: "Rick Sanchez"),
            20.vGap,
            GradientBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
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
                    subtitle: "Alive",
                  ),
                ),
                16.hGap,
                Expanded(
                  child: InfoCard(
                    iconPath: ImageAssets.species,
                    title: "Species",
                    subtitle: "Human",
                  ),
                ),
                16.hGap,
                Expanded(
                  child: InfoCard(
                    iconPath: ImageAssets.gender,
                    title: "Gender",
                    subtitle: "Male",
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
                subtitle: "Earth (C-137)",
              ),
            ),
            15.vGap,
            SizedBox(
              width: double.maxFinite,
              child: InfoCard(
                iconPath: ImageAssets.location,
                title: "Last Known Location",
                subtitle: "Citadel of Ricks",
              ),
            ),
            15.vGap,
            SizedBox(
              width: double.maxFinite,
              child: InfoCard(
                iconPath: ImageAssets.location,
                title: "Last Known Location",
                subtitleWidget: Column(
                  children: [
                    8.vGap,
                    Row(
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
                        Text(
                          "Lawnmower Dog",
                          style: AppTextTheme.body1.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
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
