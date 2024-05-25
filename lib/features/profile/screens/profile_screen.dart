import 'package:flutter/material.dart';
import 'package:swifty_companion/features/profile/widgets/display_cursus_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // final UserModel user = UserModel.fromJson(me);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text("Search Screen"),
      ),
      body: Container(
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
              // TODO: add achievement card here 
            ],
          ),
        ),
      ),
    );
  }
}
