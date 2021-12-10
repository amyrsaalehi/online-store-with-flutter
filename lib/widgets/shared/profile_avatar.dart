import 'package:flutter/material.dart';
import 'package:online_store/constants.dart';

class ProfileAvatar extends StatelessWidget {
  final String image;
  const ProfileAvatar({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(
          image,
        ),
        backgroundColor: Colors.grey[200]!.withOpacity(.5),
      ),
      Positioned(
        right: kDefaultSize * 0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: kDefaultSize * 2,
              height: kDefaultSize * 2,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
            Container(
              width: kDefaultSize * 1.5,
              height: kDefaultSize * 1.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
