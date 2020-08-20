import 'package:flutter/material.dart';
import '../Models/book_card.dart';

class BookListScreen extends StatelessWidget {

  final List _bookmarks;
  BookListScreen({List bookmarksList})
      : _bookmarks = bookmarksList;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Book List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: _bookmarks.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return BookCard(book: _bookmarks[index],);
        },
      ),
    );
  }
}