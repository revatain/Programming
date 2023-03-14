import 'package:flutter/cupertino.dart';

class CounterController with ChangeNotifier {
  int count = 0;
  int get count => _count;
  void changeTo(int newCount){
    _count = newCount;
    notifyListeners();
  }
}