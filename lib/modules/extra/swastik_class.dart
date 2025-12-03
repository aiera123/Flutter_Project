import 'package:flutter/material.dart';

class SwastikClass extends StatelessWidget {
  const SwastikClass({super.key});

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
      body: Center(child: Text('sdfhjiosdjf')),
    );
  }
}