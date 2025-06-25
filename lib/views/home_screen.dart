import 'package:flutter/material.dart';

import 'widgets/date.dart';
import 'widgets/location.dart';
import 'widgets/in_season_list.dart';

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
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Date(),
              SizedBox(height: 8),
              Location(),
              SizedBox(height: 8),
              InSeasonList(),
            ],
            ),
          ),
        ),
      );
  }
}