import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          // Theme Selection
          Text('Select Theme', style: TextStyle(fontSize: 18)),
          ListTile(
            title: Text('Light Theme'),
            onTap: () {
              themeProvider.setTheme(ThemeData.light());
            },
          ),
          ListTile(
            title: Text('Dark Theme'),
            onTap: () {
              themeProvider.setTheme(ThemeData.dark());
            },
          ),
          ListTile(
            title: Text('Custom Theme'),
            onTap: () {
              themeProvider.setTheme(
                ThemeData(
                  primarySwatch: Colors.teal,
                  hintColor: Colors.orange,
                ),
              );
            },
          ),
          // Font Selection
          Text('Select Font', style: TextStyle(fontSize: 18)),
          ListTile(
            title: Text('Roboto'),
            onTap: () {
              themeProvider.setFontFamily('Roboto');
            },
          ),
          ListTile(
            title: Text('Lobster'),
            onTap: () {
              themeProvider.setFontFamily('Lobster');
            },
          ),
          ListTile(
            title: Text('Oswald'),
            onTap: () {
              themeProvider.setFontFamily('Oswald');
            },
          ),
        ],
      ),
    );
  }
}
