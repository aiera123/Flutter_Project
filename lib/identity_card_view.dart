import 'package:flutter/material.dart';

class IdentityCardView extends StatefulWidget {
  const IdentityCardView({super.key});

  @override
  State<IdentityCardView> createState() => _IdentityCardViewState();
}

class _IdentityCardViewState extends State<IdentityCardView> {


  textWidget(String title, String subtitle){
    return RichText(
      text:TextSpan(
      text:title,
      style: TextStyle(color: Colors.blueGrey, fontSize: 16),
        children: [
          TextSpan(
            text: '',
            color: Colors.blueGrey ,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
           Flexible(
             child: Container(
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
           ),
              ],
            ),
          ),
      ),
    SizedBox(width: 20),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              textWidget('Name:' ,'Anu'),
          textWidget('Age:', '21'),
            textWidget('Address:', 'Bhaktapur'),
              textWidget('Level:' ,'BCA'),
              textWidget('Phone:' , '+977-98000000'),
              textWidget('Expiry Date:' '2030 A.D')
              ],
          ),
        ),

        );

  }
}

