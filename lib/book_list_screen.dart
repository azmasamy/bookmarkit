import 'package:flutter/material.dart';
import 'book.dart';
import 'book_card.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Book> bookmarks = [
    Book(
        image: "assets/book-cover.jpg",
        title: "The Mad Man",
        description: "aljas aksd klqw askd bqw jsa kajsd bwkj asd ljkqwb asd"),
    Book(
        image: "assets/book-cover.jpg",
        title: "Maid In Heavens",
        description: "hs uiadbf ugial las kjdf elaw bhds bajkh aew kba fshd f"),
    Book(
        image: "assets/book-cover.jpg",
        title: "To Be Told",
        description:
        "akjf aksdf we hadsv ygw wek hwwel  we hvjf jweh khwea hwe h"),
    Book(
        image: "assets/book-cover.jpg",
        title: "To Be Told",
        description:
        "akjf aksdf we hadsv ygw wek hwwel  we hvjf jweh khwea hwe h"),
    Book(
        image: "assets/book-cover.jpg",
        title: "To Be Told",
        description:
        "akjf aksdf we hadsv ygw wek hwwel  we hvjf jweh khwea hwe h"),
    Book(
        image: "assets/book-cover.jpg",
        title: "To Be Told",
        description:
        "akjf aksdf we hadsv ygw wek hwwel  we hvjf jweh khwea hwe h"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book List", style: TextStyle(color: Colors.white),),
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
}
