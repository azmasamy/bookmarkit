import 'package:bookmarkit/ui/screens/bookmark_list_screen.dart';
import 'package:bookmarkit/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookmarkit/blocs/bookmark_list.dart';

void main() {
  final BookmarkList _bookList = BookmarkList();
  _bookList.updateList();

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
      home: StreamBuilder(
          stream: _bookList.stream, builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.active) {
              return BookmarkListScreen(bookmarksList: snapshot.data);
            } else {
              return SplashScreen();
            }
      })));
}
