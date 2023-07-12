import 'package:flutter/material.dart';

import 'app_drawer.dart';

class NormalHomeBody extends StatelessWidget {
  const NormalHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        const AppDrawer(),
      ],
    );
  }
}
