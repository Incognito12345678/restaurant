import 'package:flutter/material.dart';

class Home with ChangeNotifier {
  Color _colorButton = const Color.fromARGB(255, 242, 234, 234);

  Color get colorButton => _colorButton;

  set colorButton(Color value) {
    _colorButton = value;
    notifyListeners();
  }

  void changeColorButton() {
    if (_colorButton == const Color.fromARGB(255, 242, 234, 234)) {
      _colorButton = const Color.fromARGB(255, 23, 23, 23);
    } else {
      _colorButton = const Color.fromARGB(255, 242, 234, 234);
    }
    notifyListeners();
  }
}//Color get Color => color;
  
