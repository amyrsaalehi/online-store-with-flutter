import 'package:flutter/material.dart';
import 'package:online_store/data.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: TabBar(
          tabs: icons
              .map(
                (icon) => Tab(
                  icon: Icon(
                    icon["selected"],
                    size: 30,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
