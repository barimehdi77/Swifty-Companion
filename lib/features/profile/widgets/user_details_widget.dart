import 'package:flutter/material.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/models/user_model.dart';
import 'package:swifty_companion/utils/extensions.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final UserModel user = UserModel.fromJson(me);

    return Column(
      children: [
        const SizedBox(
          height: 120 / 2,
        ),
        Text(
          user.displayname.toUpperCase(),
          style: theme.textTheme.headlineLarge,
        ),
        Text(
          '${user.kind.capitalize()}, ${user.login}',
          style: theme.textTheme.titleSmall!.copyWith(
            color: SecondaryColor.secondarycolor,
          ),
        ),
      ],
    );
  }
}
