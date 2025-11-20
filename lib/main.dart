import 'package:flutter/material.dart';
import 'first_class.dart';
import 'multiplication_class.dart';
import 'simple_interest_class.dart';
import 'substraction_class.dart';
import 'identity_card_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Classes")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Multiplication"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MultiplicationClass()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Simple Interest"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SimpleInterestClass()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Subtraction"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SubstractionClass()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

