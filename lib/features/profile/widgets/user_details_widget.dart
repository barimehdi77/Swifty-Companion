import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/features/profile/providers/user_provider.dart';
import 'package:swifty_companion/utils/extensions.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final user = context.read<UserProvider>().user;
    if (user == null) {
      return Container();
    }

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
        Text(
          user.email,
          style: theme.textTheme.titleSmall!.copyWith(
            color: SecondaryColor.secondarycolor,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        LinearPercentIndicator(
          // width: 140.0,
          lineHeight: 20.0,
          center: Text(
            "${user.cursusUsers.where((i) => i.cursus.kind == "main").first.level}%",
            style: theme.textTheme.titleLarge!,
          ),
          percent: user.cursusUsers[1].level.remainder(1),
          backgroundColor: PrimaryColor.primarycolor.shade100,
          progressColor: PrimaryColor.primarycolor,
          animation: true,
          animationDuration: 2000,
          barRadius: const Radius.circular(20),
        ),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }
}
