import 'package:amine/modules/home/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:amine/modules/home/dashboard_view.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int indexs = 0;
  final screens = [DashboardView(), OrderScreen(), DashboardView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[indexs],
      bottomNavigationBar: Theme(
        data: Theme.of(
          context,
        ).copyWith(primaryColor: Colors.white, canvasColor: Colors.white),

        child: BottomNavigationBar(
          currentIndex: indexs,
          onTap: (value) {
            setState(() {
              indexs = value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: Colors.red),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}