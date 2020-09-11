import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  int _counter = 10;
  int get counter => _counter;
  Color _color = Colors.lightGreen;

  set counter(int val) {
    _counter = val;
    notifyListeners();
  }

  increment() {
    _counter++;
    notifyListeners();
  }

  decrement() {
    _counter--;
    notifyListeners();
  }

  changeColor(Color color) {
    _color = color;
    notifyListeners();
  }

  get color => _color;
}
