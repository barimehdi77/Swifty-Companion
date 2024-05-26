import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/models/project_user_model.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectUserModel project;
  const ProjectWidget({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final MaterialColor backgroundColor =
        project.status == "finished" && project.isValidated == true
            ? Colors.green
            : (project.status == "in_progress" ||
                        project.status == "searching_a_group") &&
                    project.isValidated == null
                ? Colors.blue
                : Colors.red;
    return GFListTile(
      avatar: GFAvatar(
        backgroundColor: backgroundColor,
        shape: GFAvatarShape.standard,
        child: Text(
          project.finalMark != null
              ? project.finalMark.toString()
              : 0.toString(),
          style: theme.textTheme.headlineMedium!.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      title: Text(
        project.project.name,
        style: theme.textTheme.titleSmall,
        overflow: TextOverflow.ellipsis,
      ),
      subTitle: Text(
        project.project.slug,
        style: theme.textTheme.bodySmall,
        overflow: TextOverflow.ellipsis,
      ),
      color: PrimaryColor.primarycolor,
    );
  }
}
