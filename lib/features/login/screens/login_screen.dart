import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/features/login/data/providers/authentication_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text("Login Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login with you 42 account',
                style: theme.textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              GFButton(
                onPressed: () async {
                  bool isLoggedIn = await context
                      .read<AuthenticationProvider>()
                      .authenticationService
                      .checkToken();
                  if (isLoggedIn && context.mounted) {
                    Navigator.pushReplacementNamed(
                      context,
                      '/profile',
                      arguments: "abdel-",
                    );
                  }
                },
                text: "Login",
                shape: GFButtonShape.pills,
                size: GFSize.LARGE,
                color: theme.primaryColor,
                textStyle:
                    theme.textTheme.titleLarge!.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
