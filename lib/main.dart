import 'package:flutter/material.dart';
import 'package:bookmarkit/ui/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      accentColor: Colors.deepPurpleAccent,
      primaryColor: Colors.deepPurple,
      primarySwatch: Colors.deepPurple,
      backgroundColor: Colors.white,
      highlightColor: Colors.cyan,
      splashColor: Colors.cyan,
    ),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
