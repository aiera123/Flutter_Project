import 'package:amine/identity_card_view.dart';
import 'package:amine/home_page.dart';
import 'package:amine/login_screen.dart';

class AppRoute{
  AppRoute._();
  static const String identityCard = '/identityCard';
  static const String login = '/login';
  static const String home ='/home';

  static getAppRoutes() => {
    identityCard: (context) => const IdentityCardView(),
    login: (context) => const LoginScreen(),
    home: (context) => const HomePage(),

  };
}