import 'package:flutter/material.dart';
import 'package:online_store/api/http_service.dart';
import 'package:online_store/constants.dart';
import 'package:online_store/models/models.dart';
import 'package:online_store/widgets/shared/profile_avatar.dart';

class UserInfo extends StatelessWidget {
  final _httpService = HttpService();
  UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 170,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultSize * 3,
          vertical: kDefaultSize * 2,
        ),
        child: FutureBuilder(
          future: _httpService.getUser(1),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox(
                width: double.infinity,
                height: 170,
              );
            }
            User? user = snapshot.data as User;
            return Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Hello,\n',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w100,
                      height: 1.2,
                    ),
                    children: [
                      TextSpan(
                        text: '${user.name.firstname} 👋',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const ProfileAvatar(
                  image:
                      'https://meragor.com/en/getavatar?i=public%3A%2F%2Fmujiki-na-avu-028.jpg&w=400&h=400&upl=1',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
