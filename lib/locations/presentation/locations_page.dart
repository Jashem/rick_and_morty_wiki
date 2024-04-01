import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/presenation/gaps.dart';
import '../../core/presenation/page_title.dart';
import '../../core/presenation/text_tile.dart';

@RoutePage()
class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageTitle(
            title: "All Locations",
          ),
          16.vGap,
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 24,
                mainAxisExtent: 46,
              ),
              itemBuilder: (context, index) {
                return TextTile(
                  onTap: () {},
                  title: "#1",
                  subtitle: "Earth (C-137)",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
