import 'package:flutter/material.dart';
import 'package:online_store/theme.dart';
import 'package:online_store/widgets/main/bottom_navigation_bar.dart';
import 'package:online_store/widgets/main/tab_bar_view.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Store',
      theme: lightThemeData(context),
      home: const DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: MainBottomNavigationBar(),
          body: MainTabBarView(),
        ),
      ),
    );
  }
}
