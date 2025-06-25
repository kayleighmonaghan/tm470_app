import 'package:flutter/material.dart';

class Location extends StatelessWidget {
    const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Glasgow, Scotland',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          // SizedBox(width: 8),
          Icon(Icons.location_on),
        ],
      );
  }
}