import 'package:flutter/material.dart';

class HeartIconState with ChangeNotifier {
  Icon _hearticon = const Icon(
    Icons.favorite_border,
  );
  Icon get hearticon => _hearticon;

  void changeHeart() {
    if (_hearticon.icon == Icons.favorite_border) {
      _hearticon = const Icon(
        Icons.favorite,
      );
    } else {
      _hearticon = const Icon(
        Icons.favorite_border,
      );
    }
    notifyListeners();
  }

  set hearticon(Icon value) {
    _hearticon = value;
    notifyListeners();
  }
}
