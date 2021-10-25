import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  int _currentScreen = 0;

  int get currentScreen => _currentScreen;

  set currentScreen(int currentScreen) {
    _currentScreen = currentScreen;
    notifyListeners();
  }
}
