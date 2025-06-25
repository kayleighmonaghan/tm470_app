import 'package:flutter/material.dart';

class Location extends StatelessWidget {
    const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Glasgow, Scotland',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          // SizedBox(width: 8),
          Icon(Icons.location_on),
        ],
      ),
    );
  }
}