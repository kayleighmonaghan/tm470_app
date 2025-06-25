import 'package:flutter/material.dart';

import 'in_season_list.dart';

class InSeasonDisplay extends StatelessWidget {
    const InSeasonDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Add left padding
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Here's what's in season right now:",
        ),
        SizedBox(height: 8),
        CurrentProduce(),
      ],
    );
  }
}