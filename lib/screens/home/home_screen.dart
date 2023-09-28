import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import 'home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alda3ia",
          style: TextStyle(
            color: blueColors,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: const SafeArea(
        child: BodyHomeScreen(),
      ),
    );
  }
}
