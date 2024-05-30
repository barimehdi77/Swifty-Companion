import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/commn/providers/api_call_provider.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/features/profile/widgets/display_achievement_widget.dart';
import 'package:swifty_companion/features/profile/widgets/display_cursus_widget.dart';
import 'package:swifty_companion/features/profile/widgets/display_projects_widget.dart';
import 'package:swifty_companion/features/profile/widgets/user_profile_widget.dart';
import 'package:swifty_companion/models/user_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final login = ModalRoute.of(context)!.settings.arguments as String;

    // final UserModel user = UserModel.fromJson(me);
    // print(user.id);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text("Profile Screen"),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: login == "me"
              ? context
                  .read<ApiCallProvider>()
                  .createApiCallProvider(context)
                  .getMe()
              : context
                  .read<ApiCallProvider>()
                  .createApiCallProvider(context)
                  .searchWithLogin(login),
          builder: (BuildContext context, AsyncSnapshot<UserModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data != null) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                    child: Column(
                      children: <Widget>[
                        UserProfileWidget(),
                        SizedBox(
                          height: 20,
                        ),
                        DisplayCursusWidget(),
                        SizedBox(
                          height: 20,
                        ),
                        DisplayProjectsWidget(),
                        SizedBox(
                          height: 20,
                        ),
                        DisplayAchievementWidget(),
                      ],
                    ),
                  ),
                );
              } else {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Login is not correct"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GFButton(
                          fullWidthButton: true,
                          color: PrimaryColor.primarycolor,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          text: "Search agian",
                        ),
                      )
                    ],
                  ),
                );
              }
            } else {
              return Container(
                alignment: Alignment.center,
                child: const GFLoader(
                  type: GFLoaderType.square,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
