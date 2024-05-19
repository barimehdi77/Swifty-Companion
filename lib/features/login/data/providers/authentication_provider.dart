import 'package:flutter/material.dart';
import 'package:swifty_companion/features/login/data/services/authentication_service.dart';

class AuthenticationProvider extends ChangeNotifier {
  final AuthenticationService authenticationService = AuthenticationService();
  AuthenticationProvider();
}
