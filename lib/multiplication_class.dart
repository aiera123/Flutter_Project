import 'package:flutter/material.dart';

class MultiplicationClass extends StatefulWidget {
  const MultiplicationClass({super.key});

  @override
  State<MultiplicationClass> createState() => _MultiplicationClassState();
}

class _MultiplicationClassState extends State<MultiplicationClass> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  String result = "";

  void multiply() {
    double a = double.tryParse(num1.text) ?? 0;
    double b = double.tryParse(num2.text) ?? 0;

    setState(() {
      result = "Result = ${a * b}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Multiplication")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: num1,
              decoration: const InputDecoration(labelText: "Enter number 1"),
            ),
            TextField(
              controller: num2,
              decoration: const InputDecoration(labelText: "Enter number 2"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: multiply,
              child: const Text("Multiply"),
            ),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}

