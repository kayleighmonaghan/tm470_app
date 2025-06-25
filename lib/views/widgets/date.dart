import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatelessWidget {
    const Date({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
                // Date: Month Year
                DateFormat.yMMMM().format(DateTime.now()),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
          SizedBox(width: 6),
          Icon(Icons.calendar_month),
        ],
      ),
    );
  }
}