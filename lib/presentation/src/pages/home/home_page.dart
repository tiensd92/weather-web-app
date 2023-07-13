import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'compontents/compontents.dart';
import 'home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      lazy: false,
      create: (_) => HomeProvider(),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.sizeOf(context).width <= 800;

    return Scaffold(
      endDrawer: isSmall ? const AppDrawer() : null,
      body: isSmall ? const HomeBody() : const NormalHomeBody(),
    );
  }
}
