import 'package:flutter/material.dart';

class IdentityCardView extends StatefulWidget {
  const IdentityCardView({super.key});

  @override
  State<IdentityCardView> createState() => _IdentityCardViewState();
}

class _IdentityCardViewState extends State<IdentityCardView> {
  textWidget(String title, String subtitle) {
    return RichText(
      text: TextSpan(
        text: title,
        style: TextStyle(color: Colors.black, fontSize: 16),
        children: [
          TextSpan(
            text: subtitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFECE3),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Card',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff313647),
        toolbarHeight: 100,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xff313647), width: 2),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/identity.jpg'),
                      fit: BoxFit.cover,
                    ),
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
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
                    textWidget('Name:', ' Anu'),
                    textWidget('Age:', ' 19'),
                    textWidget('Address:', ' 123 Main St, Hawkins'),
                    textWidget('Level:', ' BCA'),
                    textWidget('Phone:', ' +1 234 567 8901'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

