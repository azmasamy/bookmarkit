import 'package:flutter/material.dart';
import 'file:///D:/Education/Medipol/1.2/Internship_II/Flutter_Projects/bookmarkit_provider/lib/ui/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:bookmarkit/blocs/bookmark_list.dart';

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
    home: ChangeNotifierProvider(create: (_) => BookmarkList(), child: SplashScreen()),
  ));
}
