import 'package:flutter/material.dart';
import 'package:online_store/constants.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultSize * 3, vertical: kDefaultSize * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: kDefaultSize * 2.5),
          ),
          GestureDetector(
            onTap: press,
            child: const Text(
              'View All',
              style: TextStyle(
                fontSize: kDefaultSize * 1.8,
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
