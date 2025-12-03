import 'package:amine/constants/app_routes.dart';
import 'package:amine/modules/extra/home_page.dart';
import 'package:flutter/material.dart';
//import 'first_class.dart';
//import 'multiplication_class.dart';
//import 'simple_interest_class.dart';
//import 'substraction_class.dart';
//import 'identity_card_view.dart';

import 'constants/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.login,
      routes: AppRoute.getAppRoutes(),
    );
  }
}

