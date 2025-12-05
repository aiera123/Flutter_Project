import 'package:amine/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 60,),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent Orders' , style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 20),
            ),
            Text('Below are Your most Recent Orders', style: AppTextStyle.poppinsMedium.copyWith(fontSize: 21),
            ),
            SizedBox(height: 16),
            ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    )
  }
}
