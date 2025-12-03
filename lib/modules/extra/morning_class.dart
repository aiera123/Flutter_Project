import 'package:flutter/material.dart';

class MorningClass extends StatefulWidget {
  const MorningClass({super.key});

  @override
  State<MorningClass> createState() => _MorningClassState();
}

class _MorningClassState extends State<MorningClass> {
  int value = 0;

  void decrement() {
    if (value > 0) {
      setState(() {
        value--;
      });
    } else {
      print("Value cannot be negative");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Simple Flutter App',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.red,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(
              'The value is $value',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.all(15),
                    elevation: 0,
                    shape: CircleBorder(),
                  ),
                  onPressed: () {
                    setState(() {
                      value++;
                    });
                  },
                  child: Icon(Icons.add, size: 25, color: Colors.red),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.all(15),
                    elevation: 0,
                    shape: CircleBorder(),
                  ),
                  onPressed: () {
                    decrement();
                  },
                  child: Icon(Icons.remove, size: 25, color: Colors.cyan),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}