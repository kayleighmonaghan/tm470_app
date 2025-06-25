import 'package:flutter/material.dart';

class CurrentProduce extends StatelessWidget {
    const CurrentProduce({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final inSeason = [
      'Asparagus',
      'Broccoli',
      'Cabbage',
      'Carrots',
      'Cauliflower',
      'Kale',
      'Leeks',
      'Lettuce',
      'Radishes',
      'Spinach',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: inSeason.map((item) => Text('\u2022 $item')).toList(),
    );
  }
}