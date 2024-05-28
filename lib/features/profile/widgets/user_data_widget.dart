import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/features/profile/providers/user_provider.dart';
import 'package:swifty_companion/features/profile/widgets/user_info_widget.dart';

class UserDataWidget extends StatelessWidget {
  const UserDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserProvider>().user;
    if (user == null) {
      return Container();
    }
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
