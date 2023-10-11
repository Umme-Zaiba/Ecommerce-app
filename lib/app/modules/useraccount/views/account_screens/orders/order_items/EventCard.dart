import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final child;
  const EventCard({super.key, required this.isPast, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: isPast ? Colors.amber[100] : Colors.amber[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
