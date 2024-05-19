import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

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
              onPressed: () {},
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
