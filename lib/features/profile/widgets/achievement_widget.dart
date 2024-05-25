import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/models/achievement_model.dart';
import 'package:swifty_companion/utils/show_dynamic_alert.dart';

class AchievementWidget extends StatelessWidget {
  final AchievementModel achievement;
  const AchievementWidget({
    super.key,
    required this.achievement,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GFListTile(
      avatar: GFAvatar(
        backgroundColor: SecondaryColor.secondarycolor,
        shape: GFAvatarShape.standard,
        child: SvgPicture.network(
          "https://cdn.intra.42.fr/${achievement.image.replaceFirst('/uploads/', "")}",
          semanticsLabel: achievement.name,
          placeholderBuilder: (BuildContext context) =>
              const CircularProgressIndicator(
            color: PrimaryColor.primarycolor,
          ),
        ),
      ),
      title: Text(
        achievement.name,
        style: theme.textTheme.titleSmall,
        overflow: TextOverflow.ellipsis,
      ),
      subTitle: Text(
        achievement.description,
        style: theme.textTheme.bodySmall,
        overflow: TextOverflow.ellipsis,
      ),
      icon: const Icon(Icons.arrow_forward_ios),
      color: PrimaryColor.primarycolor,
      onTap: () => showDynamicAlert(
        context,
        achievement.name,
        achievement.description,
      ),
    );
  }
}
