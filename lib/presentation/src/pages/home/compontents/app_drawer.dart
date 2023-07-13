import 'package:flutter/material.dart';

import 'weather_current_location.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const Column(
          children: [
            WeatherCurrentLocation(),
          ],
        ),
      ),
    );
  }
}
