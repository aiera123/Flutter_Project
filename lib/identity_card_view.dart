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
          style: TextStyle(color: Colors.purpleAccent, fontSize: 27),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.cyanAccent),),
          child: Row(
            children: [
           Container(
             height: 150,
             width: 150,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage('assests/images/starngersthings.jpg'),
               fit: BoxFit.cover,
               ),
               shape: BoxShape.circle,
               //borderRadius: BorderRadius.all(Radius.circular(12)), just to make the image rectangle as it is
             ),
           ),
              ],
            ),
          ),
        sizedBox(width: 20),
        ),
      )

  }
}

