import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  String _fontFamily = 'Roboto';

  ThemeData get themeData {
    // Use Google Fonts to get the entire TextTheme
    return _themeData.copyWith(
      textTheme: _getGoogleFontTextTheme(),
    );
  }

  String get fontFamily => _fontFamily;

  void setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  void setFontFamily(String font) {
    _fontFamily = font;
    notifyListeners(); // Notify listeners to rebuild the UI
  }

  TextTheme _getGoogleFontTextTheme() {
    switch (_fontFamily) {
      case 'Lobster':
        return GoogleFonts.lobsterTextTheme(_themeData.textTheme);
      case 'Oswald':
        return GoogleFonts.oswaldTextTheme(_themeData.textTheme);
      default:
        return GoogleFonts.robotoTextTheme(_themeData.textTheme);
    }
  }
}
