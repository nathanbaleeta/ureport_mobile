import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;
  String _iconImage;
  ThemeNotifier(this._themeData, this._iconImage);
  String get icon => _iconImage;

  getTheme() => _themeData;

  setTheme(ThemeData themeData, String imageString) async {
    _themeData = themeData;
    _iconImage= imageString;
    notifyListeners();
  }
}




