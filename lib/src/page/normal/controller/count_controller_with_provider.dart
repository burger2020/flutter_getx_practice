import 'package:flutter/material.dart';

class ChangeControllerWithProvider extends ChangeNotifier {
  int count = 0;

  void increase() {
    count++;
    notifyListeners();
  }
}
