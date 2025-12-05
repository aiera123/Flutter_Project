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
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(text: TextSpan(
                            text: 'Order' , style: AppTextStyle.poppinsMedium.copyWith(fontSize: 16),
                          children: [
                            TextSpan(text: '#:',
                            style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 16, fontStyle: FontStyle.italic),),
                          ]
                          ),
                  ),
                  Text('\$1.50', style: AppTextStyle.poppinsBold.copyWith(
                    fontSize: 18,
                  ),)
                        ],
                      ),
                      Text('Mon, July 3rd',
                      style: AppTextStyle.poppinsMedium.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      ),),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(4),
                          )
                        ],
                      ),
                    ],
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
