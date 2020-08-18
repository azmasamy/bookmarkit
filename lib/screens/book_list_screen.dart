import 'package:flutter/material.dart';
import '../book_card.dart';

class BookListScreen extends StatefulWidget {

  List bookmarks = [];
  BookListScreen(List listOfBooks) {
    bookmarks = listOfBooks;
  }

  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {

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
          itemCount: widget.bookmarks.length,
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              return BookCard(book: widget.bookmarks[index],);
            },
          ),
      );
  }
}
