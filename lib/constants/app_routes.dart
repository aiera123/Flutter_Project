
import 'package:amine/modules/extra/home_page.dart';


import '../modules/auth/login_screen.dart';
import '../modules/auth/signup_screen.dart';

class AppRoute {
  AppRoute._();

  static const String identityCard = '/identityCard';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String mondayClass = '/mondayClass';
  static const String simpleInterest = '/simpleInterest';

  static getAppRoutes() => {
    identityCard: (context) => const IdentityCard(),
    login: (context) => const LoginScreen(),
    signup: (context) => const SignupScreen(),
    home: (context) => const HomePage(),
   // mondayClass: (context) => const MondayClass(),
    //simpleInterest: (context) => const SimpleInterest(),
  };
}

class IdentityCard {
  const IdentityCard();
}