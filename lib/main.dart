import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/constants/themes/theme.dart';
import 'package:swifty_companion/features/login/data/providers/authentication_provider.dart';
import 'package:swifty_companion/features/login/screens/login_screen.dart';
import 'package:swifty_companion/features/search/screens/search_screen.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AuthenticationProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Swifty Companion',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: SCAppTheme.lightTheme,
        darkTheme: SCAppTheme.darkTheme,
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routes: {
          '/': (context) => const LoginScreen(),
          '/search': (context) => const SearchScreen(),
          // '/profile': (context) => ProfileScreen(),
        },
      ),
    );
  }
}
