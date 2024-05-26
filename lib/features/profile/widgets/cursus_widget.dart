import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:swifty_companion/commn_widgets/card_widget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/features/profile/widgets/display_skills_widget.dart';
import 'package:swifty_companion/models/cursus_users_model.dart';
import 'package:swifty_companion/utils/show_dynamic_bottom_sheet.dart';

class CursusWidget extends StatelessWidget {
  final CursusUsersModel cursus;
  const CursusWidget({
    super.key,
    required this.cursus,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GFListTile(
      avatar: GFAvatar(
        backgroundColor: SecondaryColor.secondarycolor,
        shape: GFAvatarShape.standard,
        child: Text(
          cursus.cursusId.toString(),
          style: theme.textTheme.headlineMedium!.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      titleText: cursus.cursus.name,
      subTitleText: cursus.cursus.slug,
      icon: const Icon(Icons.arrow_forward_ios),
      color: PrimaryColor.primarycolor,
      onTap: () => showDynamicBottomSheet(
        size: 0.7,
        context: context,
        child: Column(
          children: [
            CardWidget(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    "Cursus Details",
                    style: theme.textTheme.headlineMedium!.copyWith(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                  GFListTile(
                    title: Text(
                      "Cursus name: ",
                      style: theme.textTheme.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    icon: Text(
                      cursus.cursus.name,
                      style: theme.textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    color: PrimaryColor.primarycolor,
                  ),
                  GFListTile(
                    title: Text(
                      "Cursus grade: ",
                      style: theme.textTheme.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    icon: Text(
                      cursus.grade ?? "NONE",
                      style: theme.textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    color: PrimaryColor.primarycolor,
                  ),
                  GFListTile(
                    title: Text(
                      "Cursus Level: ",
                      style: theme.textTheme.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subTitle: LinearPercentIndicator(
                      lineHeight: 20.0,
                      center: Text(
                        "${cursus.level}%",
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: SecondaryColor.secondarycolorAccent,
                        ),
                      ),
                      percent: cursus.level.remainder(1),
                      backgroundColor: SecondaryColor.secondarycolor.shade100,
                      progressColor: SecondaryColor.secondarycolor,
                      animation: true,
                      animationDuration: 2000,
                      barRadius: const Radius.circular(20),
                    ),
                    color: PrimaryColor.primarycolor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DisplaySkillsWidget(
              skills: cursus.skills,
            ),
          ],
        ),
      ),
    );
  }
}
