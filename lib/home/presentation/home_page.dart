import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/presenation/cast_tile.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/text_tile.dart';
import 'list_header.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 42,
        bottom: kToolbarHeight + 24,
      ),
      child: Column(
        children: [
          ListHeader(
            title: "Favourites",
            onViewAllTap: () {},
          ),
          SizedBox(
            height: 137,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CastTile(
                avatar:
                    "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                name: "Rick Sanchez",
                isFavourite: true,
                onFavouriteTap: (value) {},
                onTap: () {},
              ),
              separatorBuilder: (context, index) => 15.hGap,
              itemCount: 5,
            ),
          ),
          42.vGap,
          ListHeader(
            title: "Meet the cast",
            onViewAllTap: () {},
          ),
          SizedBox(
            height: 137,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CastTile(
                avatar:
                    "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                name: "Rick Sanchez",
                isFavourite: false,
                onFavouriteTap: (value) {},
                onTap: () {},
              ),
              separatorBuilder: (context, index) => 15.hGap,
              itemCount: 5,
            ),
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
    );
  }
}
