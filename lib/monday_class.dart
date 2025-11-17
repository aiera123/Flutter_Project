import 'package:flutter/material.dart';

class MondayClass extends StatefulWidget {
  const MondayClass({super.key});

  @override
  State<MondayClass> createState() => _MondayClassState();
}

class _MondayClassState extends State<MondayClass> {
  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter is Fluttering😅'),
          backgroundColor: Color(0xffC9B59C),
      ),
body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          controller: firstNumberController,
          style: TextStyle(fontSize: 19, color: Colors.cyan),
          decoration: InputDecoration(
            labelText: 'Enter first Number',
            labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
            border: OutlineInputBorder(),
          ),
        )
        SizedBox(height: 20),
        TextFormField(
          keyboardType: TextInputType.number,
          controller: secondNumberController,
          style: TextStyle(fontSize: 19, color: Colors.cyan),
          decoration: InputDecoration(
            labelText: 'Enter second number',
            labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
            border: OutlineInputBorder(),
          ),
        ),
          SizedBox(height: 40),
        SizedBox()
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
            onPressed: () {
              final firstNumber = int.tryParse(firstNumberController.text) ?? 0;
              final secondNumber = int.tryParse(secondNumberController.text) ??
                  0;
              setState(() {
                final sum = firstNumber + secondNumber;
                showDialog(context: context,
                  builder: (context) =>
                      AlertDialog(
                        title: Text('Result'),
                        content: Text('The sum is $sum'),
                      ),
                );
              },
                child: Text('Add Numbers'),
              )
              ,
            },
        ),
  ),
),

    );
  }
}
