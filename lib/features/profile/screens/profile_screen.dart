import 'package:flutter/material.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/features/profile/widgets/display_achievement_widget.dart';
import 'package:swifty_companion/features/profile/widgets/display_cursus_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_profile_widget.dart';
import 'package:swifty_companion/models/user_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // final UserModel user = UserModel.fromJson(me);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text("Profile Screen"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Center(
            child: Column(
              children: <Widget>[
                UserProfileWidget(),
                SizedBox(
                  height: 20,
                ),
                DisplayCursusWidget(),
                SizedBox(
                  height: 20,
                ),
                DisplayAchievementWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
