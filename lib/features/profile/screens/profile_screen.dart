import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/models/user_model.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final UserModel user = UserModel.fromJson(me);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text("Search Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              UserProfileAvatar(
                avatarUrl: user.image.link,
                // onAvatarTap: () {
                //   print('Avatar Tapped..');
                // },
                avatarSplashColor: Colors.orange,
                radius: 60,
                isActivityIndicatorSmall: true,
                avatarBorderData: AvatarBorderData(
                  borderColor: Colors.orange,
                  borderWidth: 5.0,
                ),
              ),
              Text(
                user.displayname,
                style: theme.textTheme.headlineLarge,
              ),
              LinearPercentIndicator(
                // width: 140.0,
                lineHeight: 20.0,
                center: Text(
                  "${user.cursusUsers[1].level}%",
                  style: theme.textTheme.titleLarge!,
                ),
                percent: user.cursusUsers[1].level.remainder(1),
                backgroundColor: Colors.orange.shade100,
                progressColor: theme.primaryColor,
                animation: true,
                animationDuration: 2000,
                barRadius: const Radius.circular(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
