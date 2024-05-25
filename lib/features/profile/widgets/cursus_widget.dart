import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:swifty_companion/commn_widgets/card_widget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/features/profile/widgets/display_skills_widget.dart';
import 'package:swifty_companion/models/cursus_users_model.dart';
import 'package:swifty_companion/utils/extensions.dart';
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
        context: context,
        child: Column(
          children: [
            CardWidget(
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
                      style: theme.textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    icon: Text(
                      cursus.cursus.name,
                      style: theme.textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
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
