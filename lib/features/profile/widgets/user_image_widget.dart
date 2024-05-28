import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/features/profile/providers/user_provider.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserProvider>().user;

    if (user == null) {
      return Container();
    }

    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: SecondaryColor.secondarycolor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: UserProfileAvatar(
        avatarUrl: user.image.link,
        avatarSplashColor: SecondaryColor.secondarycolor,
        radius: 50,
        isActivityIndicatorSmall: true,
      ),
    );
  }
}
