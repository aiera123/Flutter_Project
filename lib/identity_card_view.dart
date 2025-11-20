import 'package:flutter/material.dart';

class IdentityCardView extends StatefulWidget {
  const IdentityCardView({super.key});

  @override
  State<IdentityCardView> createState() => _IdentityCardViewState();
}

class _IdentityCardViewState extends State<IdentityCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text(
          'My Card',
          style: TextStyle(color: Colors.red, fontSize: 27),
        ),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.cyanAccent),),
          child: Row(
            children: [
              Image(image: AssetImage('assests/images/Strangersthings.jpg'))
              ),
            ],
          ),
        ),
      ),
    ),
    )
  }
}

