import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../home_provider.dart';

class WeatherCurrentLocation extends StatelessWidget {
  const WeatherCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final location = context.watch<HomeProvider>().location;
    final weatherCurrent = context.watch<HomeProvider>().weatherCurrent;
    final condition = weatherCurrent?.condition;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFEFF2FA),
            Color(0xFF5f8FEE),
          ],
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color(0xFF5f8FEE),
                    size: 16,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    location?.name ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF5f8FEE),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Image.network(
            condition?.icon ?? '',
            height: 100,
            fit: BoxFit.fitHeight,
            errorBuilder: (context, error, stackTrace) => const SizedBox(
              width: 40,
              height: 40,
              child: Placeholder(),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            DateTime.now().detailTime,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                weatherCurrent?.tempC == null
                    ? '_'
                    : '${weatherCurrent?.tempC}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: Colors.white,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const SizedBox(
                  width: 8,
                  height: 8,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            condition?.text ?? '',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.wind_power,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Wind',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 14,
                width: 1,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.white,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${weatherCurrent?.windKph ?? '_'} km/h',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.water_drop_outlined,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Hum',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 14,
                width: 1,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.white,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${weatherCurrent?.humidity ?? '_'} %',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

extension DateTimeExt on DateTime {
  String get detailTime {
    final format = DateFormat('dd MMMM');
    return 'Today, ${format.format(this)}';
  }
}
