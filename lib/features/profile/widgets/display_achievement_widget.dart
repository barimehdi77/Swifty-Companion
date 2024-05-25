import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';
import 'package:swifty_companion/commn_widgets/card_widget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/features/profile/widgets/achievement_widget.dart';
import 'package:swifty_companion/models/user_model.dart';
import 'package:swifty_companion/utils/extensions.dart';
import 'package:swifty_companion/utils/show_dynamic_bottom_sheet.dart';

class DisplayAchievementWidget extends StatelessWidget {
  const DisplayAchievementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final UserModel user = UserModel.fromJson(me);

    return CardWidget(
      padding: const EdgeInsets.all(7),
      child: Column(
        children: [
          Text(
            "${user.login}'s achievements".capitalize(),
            style: theme.textTheme.headlineMedium!.copyWith(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount:
                  user.achievements.length > 3 ? 3 : user.achievements.length,
              itemBuilder: (context, index) {
                return AchievementWidget(
                  achievement: user.achievements[index],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GFButton(
              fullWidthButton: true,
              color: PrimaryColor.primarycolor,
              onPressed: () {
                showDynamicBottomSheet(
                  size: 0.7,
                  enableDrag: true,
                  isDismissible: true,
                  isScrollControlled: true,
                  context: context,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: user.achievements.length,
                      itemBuilder: (context, index) {
                        return AchievementWidget(
                          achievement: user.achievements[index],
                        );
                      },
                    ),
                  ),
                );
              },
              text: "View More",
            ),
          )
        ],
      ),
    );
  }
}
