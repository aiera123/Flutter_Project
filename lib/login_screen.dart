import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Login page',
      ),
        body: Column(
            children: [
            ElevatedButton(onPressed: () {}, child: Text('Login')),
    ElevatedButton(onPressed: (
    onPressed: (){
    Navigator.pushNamed(context, AppRoute.loginscreen);
    },
    child: Text('Login Button'),),
    )
    )
  }
}
