import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFECE3),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo.png', width: 200),
            SizedBox(height: 12),
            Text('Welcome Back,', style:AppTextStyle.PoppinsMedium.copyWith(fontSize: 28)),
            Text(
              'Make it work, make it right, make it fast.',
              style: AppTextStyle.PoppinsMedium.copyWith(fontSize: 18)),
      ),
      SizedBox(height:30),
      TextFormField(
        style: AppTextStyle.poppinsRegular.copywith(fontSize : 14),
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        decoration : InputDecoration(hintText: 'E-mail', hintStyle: AppTextStyle.poppinsRegular.copywith(
          fontSize: 14,
          color : Colors.black.withOpacity(0.6),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),

          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          prefixIcon: Icon(Icons.person, size: 29,),
        ),
      ),
      SizedBox(height: 14),
      TextFormField(
        style: AppTextStyle.poppinsRegular.copywith(fontSize : 14),

        controller: passwordController,
        obscureText: isObscure,
        decoration : InputDecoration(hintText: 'password', hintStyle: AppTextStyle.poppinsRegular.copywith(
          fontSize: 14,
          color : Colors.black.withOpacity(0.6),
        ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),

          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          prefixIcon: Icon(Icons.fingerprint, size: 29,),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: (), {
              setState(() {
                isObscure = !isObscure;
              });
          } ,
              icon: Icon(Icons.visibility_off),
          ),
        ),
      ),

          ],
        ),
      ),

  }
}
