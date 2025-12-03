import 'package:flutter/material.dart';

class FirstClass extends StatefulWidget {
  const FirstClass({super.key});

  @override
  State<FirstClass> createState() => _FirstClassState();
}

class _FirstClassState extends State<FirstClass> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      if (counter < 30) {
        counter++;
      }
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget Example ')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Counter Value: $counter', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.all(12),
                  shape: const CircleBorder(),
                  elevation: 1,
                ),
                onPressed: incrementCounter,
                child: Icon(Icons.add, size: 24, color: Colors.white),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.all(12),
                  shape: const CircleBorder(),
                  elevation: 1,
                ),
                onPressed: decrementCounter,
                child: Icon(Icons.remove, size: 24, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}