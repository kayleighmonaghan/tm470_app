import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // browser tab title
      title: "Home",
      debugShowCheckedModeBanner: false,
      // Body
      home: Scaffold(                                    
        body: Center(
          child: Text(
            // Date format
            DateFormat.MMMMd().format(DateTime.now()),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
    );
  }
}