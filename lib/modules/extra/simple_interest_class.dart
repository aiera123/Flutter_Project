import 'package:flutter/material.dart';

class SimpleInterestClass extends StatefulWidget {
  const SimpleInterestClass({super.key});

  @override
  State<SimpleInterestClass> createState() => _SimpleInterestClassState();
}

class _SimpleInterestClassState extends State<SimpleInterestClass> {
  TextEditingController p = TextEditingController();
  TextEditingController t = TextEditingController();
  TextEditingController r = TextEditingController();

  String result = "";

  void calculateSI() {
    double principal = double.tryParse(p.text) ?? 0;
    double time = double.tryParse(t.text) ?? 0;
    double rate = double.tryParse(r.text) ?? 0;

    double si = (principal * time * rate) / 100;

    setState(() {
      result = "Simple Interest = $si";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Interest Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: p,
              decoration: const InputDecoration(labelText: "Principal"),
            ),
            TextField(
              controller: t,
              decoration: const InputDecoration(labelText: "Time"),
            ),
            TextField(
              controller: r,
              decoration: const InputDecoration(labelText: "Rate %"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateSI,
              child: const Text("Calculate SI"),
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
