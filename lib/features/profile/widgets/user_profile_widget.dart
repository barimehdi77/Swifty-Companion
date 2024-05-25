import 'package:flutter/material.dart';
import 'package:swifty_companion/commn_widgets/card_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_data_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_details_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_image_widget.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 120 / 2.0,
          ),
          child: CardWidget(
            child: Padding(
              padding: EdgeInsets.only(
                top: 15.0,
                bottom: 15.0,
              ),
              child: Column(
                children: <Widget>[
                  UserDetailsWidget(),
                  Divider(),
                  UserDataWidget(),
                ],
              ),
            ),
          ),
        ),
        UserImageWidget(),
      ],
    );
  }
}
