import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:swifty_companion/commn_widgets/card_widget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/models/user_model.dart';
import 'package:swifty_companion/utils/extensions.dart';

class DisplayCursusWidget extends StatelessWidget {
  const DisplayCursusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final UserModel user = UserModel.fromJson(me);
    return CardWidget(
      padding: const EdgeInsets.all(7),
      child: Column(
        children: [
          Text(
            "${user.login}'s cursus".capitalize(),
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
    );
  }
}
