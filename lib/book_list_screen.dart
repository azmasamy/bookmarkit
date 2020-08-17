import 'package:flutter/material.dart';
import 'book.dart';
import 'book_card.dart';
import 'api.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List bookmarks = [];
  bool areBooksDataLoaded = false;

  @override
  void initState() {
    super.initState();
    APIController().fetchData().then((value) => setState(() {
          bookmarks = value;
          areBooksDataLoaded = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    if (areBooksDataLoaded) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Book List",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
            padding: const EdgeInsets.all(8),
            children: bookmarks
                .map((book) => BookCard(
                      book: book,
                    ))
                .toList()),
      );
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Book List",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ));
  }
}
