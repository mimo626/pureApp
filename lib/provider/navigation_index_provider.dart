import 'package:flutter/material.dart';

class NavigationIndexProvider extends ChangeNotifier{
  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;

  void setCurrentPageIndex(int index){
    _currentPageIndex = index;
    notifyListeners();
  }
}