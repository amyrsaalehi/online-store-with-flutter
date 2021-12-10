import 'package:flutter/material.dart';
import 'package:online_store/widgets/shared/categories.dart';
import 'package:online_store/widgets/shared/main_title.dart';
import 'package:online_store/widgets/shared/product_list.dart';
import 'package:online_store/widgets/shared/user_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserInfo(),
            const Categories(),
            MainTitle(
              title: 'Popular',
              press: () {},
            ),
            ProductList(),
          ],
        ),
      ),
    );
  }
}
