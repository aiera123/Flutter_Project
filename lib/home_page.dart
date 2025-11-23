import 'package:amine/identity_card_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        centerTitle: True,
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w600,
              fontSize: 20,
          )
          );
          body: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Login')),
              ElevatedButton(onPressed: (
              onPressed: (){
                Navigator.pushNamed(context, AppRoute.identityCard);
    },
                  child: Text('Identity Card'),),
              ElevatedButton(onPressed: () {}, child: Text('Monday Class')),
              ElevatedButton(onPressed: () {}, child: Text('Swastik Class')),
            ],
          )
        ),
      ),
    );
  }
}

