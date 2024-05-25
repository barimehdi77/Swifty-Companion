import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  final String title;
  final String info;
  const UserInfoWidget({
    super.key,
    required this.title,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: <Widget>[
        Text(
          title,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: Colors.black54,
          ),
        ),
        Text(
          info,
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
