import 'package:flutter/material.dart';

import 'router.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFF2FA),
        primaryColor: const Color(0xFFEFF2FA),
      ),
    );
  }
}
