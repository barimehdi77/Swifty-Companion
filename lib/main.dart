import 'package:flutter/material.dart';
import 'package:swifty_companion/constants/themes/theme.dart';
import 'package:swifty_companion/features/search/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swifty Companion',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SCAppTheme.lightTheme,
      darkTheme: SCAppTheme.darkTheme,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/': (context) => const SearchScreen(),
        // '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
