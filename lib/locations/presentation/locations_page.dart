import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Locations",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
