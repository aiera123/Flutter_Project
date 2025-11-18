// main.dart

import 'package:flutter/material.dart';
import 'calculation_display_screen.dart'; // We will create this file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math Operations App',
      home: CalculationDisplayScreen(), // Launch the new screen
    );
  }
}