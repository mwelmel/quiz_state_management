import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  // Default theme is light and default font is Roboto
  ThemeData _themeData = ThemeData.light();
  String _fontFamily = 'Roboto';

  ThemeData get themeData => _themeData;
  String get fontFamily => _fontFamily;

  // Method to update the theme (light, dark, custom)
  void setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  // Method to update font family
  void setFontFamily(String fontFamily) {
    _fontFamily = fontFamily;
    notifyListeners();
  }

  // Method to get the updated TextTheme with Google Fonts applied while keeping the original theme
  TextTheme get textTheme {
    return GoogleFonts.getTextTheme(
      _fontFamily, // Get the selected font family from the provider
      _themeData.textTheme, // Apply the font to the existing textTheme of the current theme
    );
  }
}
