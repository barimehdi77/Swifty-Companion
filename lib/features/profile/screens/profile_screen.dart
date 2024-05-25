import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:swifty_companion/commn_widgets/card_widget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/features/profile/widgets/user_data_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_details_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_image_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_profile_widget.dart';
import 'package:swifty_companion/models/user_model.dart';
import 'package:swifty_companion/utils/extensions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final UserModel user = UserModel.fromJson(me);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text("Search Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const UserProfileWidget(),
              const SizedBox(
                height: 20,
              ),
              CardWidget(
                padding: const EdgeInsets.all(7),
                child: Column(
                  children: [
                    Text(
                      "${user.login}'s cursus".capitalize(),
                      // textAlign: TextAlign.left,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GFListTile(
                          avatar: GFAvatar(
                            backgroundColor: SecondaryColor.secondarycolor,
                            shape: GFAvatarShape.standard,
                            child: Text(
                              user.cursusUsers[index].cursusId.toString(),
                              style: theme.textTheme.headlineMedium!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          titleText: user.cursusUsers[index].cursus.name,
                          subTitleText: user.cursusUsers[index].cursus.slug,
                          icon: const Icon(Icons.arrow_forward_ios),
                          color: PrimaryColor.primarycolor,
                        );
                      },
                      itemCount: user.cursusUsers.length,
                    ),
                  ],
                ),
              ),
              LinearPercentIndicator(
                // width: 140.0,
                lineHeight: 20.0,
                center: Text(
                  "${user.cursusUsers[1].level}%",
                  style: theme.textTheme.titleLarge!,
                ),
                percent: user.cursusUsers[1].level.remainder(1),
                backgroundColor: Colors.orange.shade100,
                progressColor: theme.primaryColor,
                animation: true,
                animationDuration: 2000,
                barRadius: const Radius.circular(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
