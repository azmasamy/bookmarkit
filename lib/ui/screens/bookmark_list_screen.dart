import 'package:flutter/material.dart';
import '../widgets/bookmark_card.dart';

class BookmarkListScreen extends StatelessWidget {

  final List _bookmarks;
  BookmarkListScreen({List bookmarksList})
      : _bookmarks = bookmarksList;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Bookmarkit List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: _bookmarks.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return BookmarkCard(book: _bookmarks[index],);
        },
      ),
    );
  }
}