import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/database/temp_database.dart';
import 'package:swifty_companion/features/login/data/providers/authentication_provider.dart';
import 'package:swifty_companion/models/user_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(user.displayname),
            Text(
              'Who You are looking for?',
              style: theme.textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Enter the student\'s login:',
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _searchController,
              textInputAction: TextInputAction.search,
              autofocus: false,
              maxLines: 1,
              enableSuggestions: true,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GFButton(
              onPressed: () async {
                AccessTokenResponse? userToken = await context
                    .read<AuthenticationProvider>()
                    .authenticationService
                    .getToken;

                print(
                    "userToken : ${userToken?.accessToken ?? "TOKEN NOT FOUND"}");
              },
              text: "Search",
              shape: GFButtonShape.pills,
              size: GFSize.LARGE,
              color: theme.primaryColor,
              textStyle:
                  theme.textTheme.titleLarge!.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
