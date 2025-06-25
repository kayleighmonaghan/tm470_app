import 'package:flutter/material.dart';

import 'widgets/date.dart';
import 'widgets/location.dart';
import 'widgets/in_season_display.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
      children: [
        Date(),
        SizedBox(height: 8),
        Location(),
        SizedBox(height: 8),
        InSeasonDisplay(),
      ],
      ),
    );
  }
}