import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({super.key});

  @override
  State<StatefulWidget> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          now.displayTime,
          style: const TextStyle(
            color: Color(0xFF5f8FEE),
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          now.displayDate,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

extension DateTimeExt on DateTime {
  String get displayTime {
    final format = DateFormat('hh:mm a');
    return format.format(this);
  }

  String get displayDate {
    final format = DateFormat('EEEE, dd MMMM, yyyy');
    return format.format(this);
  }
}
