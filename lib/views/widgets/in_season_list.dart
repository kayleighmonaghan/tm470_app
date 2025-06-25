import 'package:flutter/material.dart';

class InSeasonList extends StatelessWidget {
    const InSeasonList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Here's what's in season right now:",
        ),
        Text(
          '\u2022 Asparagus',
        ),
        Text(
          '\u2022 Broccoli',
        ),
        Text(
          '\u2022 Cabbage',
        ),
      ],
    );
  }
}