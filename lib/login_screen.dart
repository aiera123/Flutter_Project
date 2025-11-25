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
  body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.only(
    top: 60,
    left: 24,
    right: 24,
    bottom: 20,
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Image.asset('assets/images/logo.png', width: 200),
    SizedBox(height: 12),
    Text(
    'Welcome Back,',
    style: AppTextStyle.poppinsBold.copyWith(fontSize: 28),
    ),
    Text(
    'Make it work, make it right, make it fast.',
    style: AppTextStyle.poppinsMedium.copyWith(fontSize: 16),
    ),
    SizedBox(height: 30),
    TextFormField(
    style: AppTextStyle.poppinsRegular.copyWith(fontSize: 16),
    keyboardType: TextInputType.emailAddress,
    controller: emailController,
    decoration: InputDecoration(
    hintText: 'E-Mail',
    hintStyle: AppTextStyle.poppinsRegular.copyWith(
    fontSize: 16,
    color: Colors.black.withOpacity(0.6),
    ),
    border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    contentPadding: EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 20,
    ),
    prefixIcon: Icon(Icons.person, size: 26),
    ),
    ),
    SizedBox(height: 14),
    TextFormField(
    style: AppTextStyle.poppinsRegular.copyWith(fontSize: 16),
    controller: passwordController,
    obscureText: isObscure,
    decoration: InputDecoration(
    hintText: 'Password',
    hintStyle: AppTextStyle.poppinsRegular.copyWith(
    fontSize: 16,
    color: Colors.black.withOpacity(0.6),
    ),
    border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    contentPadding: EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 20,
    ),
    prefixIcon: Icon(Icons.fingerprint, size: 26),
    suffixIcon: IconButton(
    padding: EdgeInsets.zero,
    onPressed: () {
    setState(() {
    isObscure = !isObscure;
    });
    },
    icon: Icon(
    isObscure ? Icons.visibility_off : Icons.visibility,
    ),
    ),
    ),
    ),
      SizedBox(height: 10),
      Align(
        alignment: Alignment.centerRight,
        child: TextButton(onPressed: () {},
            child: Text('forget Password ?',
            style: AppTextStyle.poppinsMedium.copyWith(
              color: Colors.blue,
            ),
            ),
        ),
      ),
      SizedBox(height: 20),
      ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
            minimumSize: Size(double.infinity, 56),
          ),
          onPressed: () {}, child: Text('Login'.toUpperCase(),
      style: AppTextStyle.poppinsMedium.copyWith(
        fontSize: 16,
        color: Colors.white,
      ),)),
      SizedBox(height: 20),
      Align(
        child: Text(
          'or'.toUpperCase(),
        style: AppTextStyle.poppinsRegular.copyWith(
          color: Colors.black54,
          fontSize: 18,
        ),),
      )
      SizedBox(height: 20),
      OutlinedButton(
        style: OutlinedButton.styleFrom(,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size(double.infinity, 56),
    side: BorderSide(color: Colors.black, width: 1.5),
      ),
      onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Logo-google-icon-PNG.png',
            width: 26,
            height: 26,
          )
          Text('Sign-In with Google', style: AppTextStyle.poppinsMedium.copyWith(
          fontSize: 18,
          color: Colors.black,
        ),),
        ],
      ))
    SizedBox(height: 20),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Don\'t have an account?',
    style: AppTextstyle.poppinsMedium.copyWith(
    fontSize:16,
    color: Colors.black,
    ),
    ),
    SizedBox(width: 8),
    Text(
    'Signup',
    style: AppTextStyle.poppinsMedium.copyWith(
    fontSize: 18,
    color: Colors.blue,
    ),
    )
    ],)
    ],
    
    ),
    ),
  ),
  );
  }
  }
