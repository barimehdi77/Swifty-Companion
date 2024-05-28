import 'package:flutter/material.dart';
import 'package:swifty_companion/models/user_model.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  void updateUser(UserModel newUser) {
    _user = newUser;
    notifyListeners(); // Notify listeners of the change
  }

  void clearUser() {
    _user = null;
    notifyListeners();
  }
}
