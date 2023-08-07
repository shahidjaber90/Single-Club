import 'package:flutter/material.dart';

class Myprovider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  int _boxIndex = 0;
  int get boxIndex => _currentIndex;

  void updateIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }
  void updateBoxIndex(int newIndex) {
    _boxIndex = newIndex;
    notifyListeners();
  }

}
