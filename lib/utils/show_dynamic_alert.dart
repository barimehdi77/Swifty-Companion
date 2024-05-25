import 'package:flutter/material.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';

void showDynamicAlert(
  BuildContext context,
  String title,
  String subtitle,
) {
  final theme = Theme.of(context);

  // set up the button
  Widget okButton = TextButton(
    onPressed: () => Navigator.of(context).pop(),
    child: Text(
      "Ok",
      style: theme.textTheme.titleLarge!.copyWith(
        color: SecondaryColor.secondarycolor,
      ),
    ),
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      title,
      style: theme.textTheme.titleLarge,
    ),
    content: Text(
      subtitle,
      style: theme.textTheme.bodyLarge,
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
