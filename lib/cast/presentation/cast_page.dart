import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/presenation/cast_tile.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/page_title.dart';

@RoutePage()
class CastPage extends StatelessWidget {
  const CastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageTitle(
            title: "All Cast",
          ),
          16.vGap,
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 24,
                mainAxisExtent: 181,
              ),
              itemBuilder: (context, index) {
                return CastTile(
                  padding: const EdgeInsets.all(10),
                  avatar:
                      "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                  name: "Rick Sanchez",
                  isFavourite: true,
                  onFavouriteTap: (value) {},
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
