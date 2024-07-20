import 'package:flutter/material.dart';

class AuthState extends ChangeNotifier {
  static final AuthState instance = AuthState();

  bool isLogged = false;

  void login() {
    isLogged = true;
    notifyListeners();
  }

  void logout() {
    isLogged = false;
    notifyListeners();
  }
}
