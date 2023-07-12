import 'package:flutter/material.dart';

import 'compontents/compontents.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.sizeOf(context).width <= 800;

    return Scaffold(
      drawer: isSmall ? const AppDrawer() : null,
      body: isSmall ? SmallHomeBody() : const NormalHomeBody(),
    );
  }
}
