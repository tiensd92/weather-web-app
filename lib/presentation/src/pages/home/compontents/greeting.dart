import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/src/pages/home/home_provider.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    final condition = context.watch<HomeProvider>().weatherCurrent?.condition;

    return Row(
      children: [
        Image.network(
          condition?.icon ?? '',
          errorBuilder: (context, error, stackTrace) => const SizedBox(
            width: 20,
            height: 20,
            child: Placeholder(),
          ),
        ),
        Text(
          DateTime.now().generateGreeting,
          style: const TextStyle(
            fontSize: 24,
            color: Color(0xFF5f8FEE),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

extension DateTimeExt on DateTime {
  String get generateGreeting {
    if (hour >= 0 && hour <= 12) {
      return 'Good mornig';
    }

    if (hour > 12 && hour <= 17) {
      return 'Good afternoon';
    }

    return 'Good Evening';
  }
}
