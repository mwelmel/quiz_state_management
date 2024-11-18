import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_state_management/settings_screen.dart';
import 'theme_provider.dart'; // Import the ThemeProvider file

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      theme: themeProvider.themeData.copyWith(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: themeProvider.fontFamily,
            ),
      ),
      home: SettingsScreen(),
    );
  }
}
