import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EpisodesPage extends StatelessWidget {
  const EpisodesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Episodes",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
