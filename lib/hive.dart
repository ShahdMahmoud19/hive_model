import 'package:flutter/material.dart';
import 'package:hive_model/home/presentation/screens/home_screen.dart';

class Hive extends StatelessWidget {
  const Hive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}