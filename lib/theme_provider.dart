import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  String _fontFamily = 'Arial';

  ThemeData get themeData => _themeData;
  String get fontFamily => _fontFamily;

  void setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  void setFontFamily(String font) {
    _fontFamily = font;
    notifyListeners();
  }
}
