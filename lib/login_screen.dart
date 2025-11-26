import 'package:flutter/material.dart';
import 'app_text_styles.dart';

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
      backgroundColor: const Color(0xffEFECE3),
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
              const SizedBox(height: 12),

              Text(
                'Welcome Back,',
                style: AppTextStyle.poppinsBold.copyWith(fontSize: 28),
              ),

              Text(
                'Make it work, make it right, make it fast.',
                style: AppTextStyle.poppinsMedium.copyWith(fontSize: 16),
              ),

              const SizedBox(height: 30),

              // EMAIL FIELD
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
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 20),
                  prefixIcon: const Icon(Icons.person, size: 26),
                ),
              ),

              const SizedBox(height: 14),

              // PASSWORD FIELD
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
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 20),
                  prefixIcon: const Icon(Icons.fingerprint, size: 26),
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

              const SizedBox(height: 10),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password?',
                    style: AppTextStyle.poppinsMedium.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // LOGIN BUTTON
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(double.infinity, 56),
                ),
                onPressed: () {},
                child: Text(
                  'LOGIN',
                  style: AppTextStyle.poppinsMedium.copyWith(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Align(
                child: Text(
                  'OR',
                  style: AppTextStyle.poppinsRegular.copyWith(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // GOOGLE BUTTON
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(double.infinity, 56),
                  side: const BorderSide(color: Colors.black, width: 1.5),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Logo-google-icon-PNG.png',
                      width: 26,
                      height: 26,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Sign-In with Google',
                      style: AppTextStyle.poppinsMedium.copyWith(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: AppTextStyle.poppinsMedium.copyWith(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Signup',
                    style: AppTextStyle.poppinsMedium.copyWith(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
