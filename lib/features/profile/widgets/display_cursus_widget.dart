import 'package:flutter/material.dart';
import 'package:swifty_companion/commn_widgets/card_widget.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/features/profile/widgets/cursus_widget.dart';
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
          SizedBox(
            height: 170,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CursusWidget(cursus: user.cursusUsers[index]);
              },
              itemCount: user.cursusUsers.length,
            ),
          ),
        ],
      ),
    );
  }
}
