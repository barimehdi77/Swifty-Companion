import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:swifty_companion/commn_widgets/card_widget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/models/skill_model.dart';

class DisplaySkillsWidget extends StatelessWidget {
  final List<SkillModel> skills;
  const DisplaySkillsWidget({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CardWidget(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            "Skills",
            style: theme.textTheme.headlineMedium!.copyWith(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: skills.length > 3
                ? 300
                : (80 * skills.length).toDouble(),
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GFListTile(
                  title: Text(
                    skills[index].name,
                    style: theme.textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subTitle: LinearPercentIndicator(
                    // width: 140.0,
                    lineHeight: 20.0,
                    center: Text(
                      "${skills[index].level.toStringAsFixed(2)}%",
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: SecondaryColor.secondarycolorAccent,
                      ),
                    ),
                    percent: skills[index].level.remainder(1),
                    backgroundColor: SecondaryColor.secondarycolor.shade100,
                    progressColor: SecondaryColor.secondarycolor,
                    animation: true,
                    animationDuration: 2000,
                    barRadius: const Radius.circular(20),
                  ),
                  color: PrimaryColor.primarycolor,
                );
              },
              itemCount: skills.length,
            ),
          ),
        ],
      ),
    );
  }
}
