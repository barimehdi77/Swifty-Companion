import 'package:flutter/material.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/features/profile/widgets/user_info_widget.dart';
import 'package:swifty_companion/models/user_model.dart';

class UserDataWidget extends StatelessWidget {
  const UserDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel user = UserModel.fromJson(me);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            UserInfoWidget(
              title: 'Wallet',
              info: user.wallet.toString(),
            ),
            const VerticalDivider(),
            UserInfoWidget(
              title: 'Correction Point',
              info: user.correctionPoint.toString(),
            ),
            const VerticalDivider(),
            UserInfoWidget(
              title: 'Pool',
              info: "${user.poolMonth} ${user.poolYear}",
            ),
          ],
        ),
      ),
    );
  }
}
