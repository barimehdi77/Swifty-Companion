import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:swifty_companion/constants/themes/colors/primary_color.dart';
import 'package:swifty_companion/constants/themes/colors/secondary_color.dart';

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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text("Search Screen"),
        actions: [
          GFIconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/profile',
                arguments: "me",
              );
            },
            icon: const Icon(Icons.person),
            shape: GFIconButtonShape.circle,
            type: GFButtonType.outline,
            color: SecondaryColor.secondarycolor,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                if (_searchController.text.isNotEmpty &&
                    _searchController.text.length > 3) {
                  Navigator.pushNamed(context, '/profile',
                      arguments: _searchController.text);
                } else {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  SnackBar snackBar = SnackBar(
                    content: Text(
                      "Please enter a valid login",
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: PrimaryColor.primarycolor,
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 20),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                _searchController.clear();
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
