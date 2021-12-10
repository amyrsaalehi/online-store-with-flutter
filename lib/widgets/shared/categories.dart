import 'package:flutter/material.dart';
import 'package:online_store/constants.dart';

import 'category.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultSize * 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            Category(
              icon: Icons.ac_unit_outlined,
              text: 'Chair',
              isActive: true,
            ),
            SizedBox(
              width: kDefaultSize * 1,
            ),
            Category(
              icon: Icons.ac_unit_outlined,
              text: 'Chair',
              isActive: false,
            ),
            SizedBox(
              width: kDefaultSize * 1,
            ),
            Category(
              icon: Icons.ac_unit_outlined,
              text: 'Chair',
              isActive: false,
            ),
            SizedBox(
              width: kDefaultSize * 1,
            ),
            Category(
              icon: Icons.ac_unit_outlined,
              text: 'Chair',
              isActive: false,
            ),
            SizedBox(
              width: kDefaultSize * 1,
            ),
            Category(
              icon: Icons.ac_unit_outlined,
              text: 'Chair',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
