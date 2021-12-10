import 'package:flutter/material.dart';
import 'package:online_store/constants.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.text,
    required this.icon,
    required this.isActive,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return Container(
        height: kDefaultSize * 5.5,
        padding: const EdgeInsets.only(
            left: kDefaultSize * .9, right: kDefaultSize * 2.0),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(kDefaultSize * 5)),
        ),
        child: Row(
          children: [
            Container(
              width: kDefaultSize * 4,
              height: kDefaultSize * 4,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                icon,
                size: kDefaultSize * 2.5,
              ),
            ),
            const SizedBox(
              width: kDefaultSize * 1,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: kDefaultSize * 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      height: kDefaultSize * 5.5,
      width: kDefaultSize * 5.5,
      decoration: BoxDecoration(
        color: Colors.grey[200]!.withOpacity(.4),
        borderRadius: const BorderRadius.all(Radius.circular(kDefaultSize * 5)),
      ),
      child: Icon(
        icon,
        size: kDefaultSize * 2.5,
      ),
    );
  }
}
