import 'package:flutter/material.dart';
import 'package:weather_app/presentation/src/pages/home/compontents/compontents.dart';

import 'app_drawer.dart';
import 'current_time.dart';

class NormalHomeBody extends StatelessWidget {
  const NormalHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: HomeBody(),
        ),
        AppDrawer(),
      ],
    );
  }
}
