import 'package:flutter/material.dart';

import 'current_time.dart';
import 'greeting.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.sizeOf(context).width <= 800;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                children: [
                  CurrentTime(),
                  Greeting(),
                ],
              ),
              const Spacer(),
              if (isSmall)
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    size: 30,
                    color: Color(0xFF5f8FEE),
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
