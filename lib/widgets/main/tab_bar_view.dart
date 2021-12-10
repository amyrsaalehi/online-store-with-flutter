import 'package:flutter/material.dart';
import 'package:online_store/screens/home/home_screen.dart';

class MainTabBarView extends StatelessWidget {
  const MainTabBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        HomeScreen(),
        Scaffold(),
        Scaffold(),
        Scaffold(),
      ],
    );
  }
}
