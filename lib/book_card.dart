import 'package:flutter/material.dart';
import 'book.dart';
import 'screens/book_info_screen.dart';

class BookCard extends StatelessWidget {
  final Book _book;

  BookCard({Book book}) : _book = book;

  @override
  Widget build(BuildContext context) {
    Widget _bookTitleDescription =
        _buildBookTitleDescription(_book.title, _book.description);
    Widget _emptyVerticalSpace = _buildEmptyVerticalSpace();
    Widget _bookImage = _buildBookImage(_book.image);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BookInfoScreen(
                    book: _book,
                  )),
        );
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _bookTitleDescription,
              _emptyVerticalSpace,
              _bookImage,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookTitle(String title) {
    return Text(
      formatTitle(title),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        letterSpacing: 2,
      ),
    );
  }

  Widget _buildBookDescription(String description) {
    return Text(
      formatDescription(description),
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildBookTitleDescription(String title, String description) {
    Widget _bookTitle = _buildBookTitle(title);
    Widget _bookDescription = _buildBookDescription(description);
    Widget _emptyHorizontalSpace = _buildEmptyHorizontalSpace();

    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _bookTitle,
            _emptyHorizontalSpace,
            _bookDescription
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyHorizontalSpace() {
    return SizedBox(
      height: 20,
    );
  }

  Widget _buildEmptyVerticalSpace() {
    return SizedBox(
      width: 8.0,
    );
  }

  Widget _buildBookImage(String image) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Visibility(
          visible: isLoaded(image),
          replacement: Container(
            height: 120,
            width: 80,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          child: Image.network(
            checkImageUrl(image),
            height: 120,
            width: 80,
          ),
        ));
  }

  String formatDescription(String description) {
    if (description == null) {
      return "(MISSING DESCRIPTION)";
    } else if (description.length >= 163) {
      return description.substring(0, 163) + "...";
    } else {
      return description;
    }
  }

  bool isLoaded(String strProperty) {
    return (strProperty == "") ? false : true;
  }

  String formatTitle(String title) {
    if (title == null) {
      return "(MISSING TITLE)";
    } else if (title.length >= 50) {
      return title.substring(0, 50) + "...";
    } else {
      return title;
    }
  }

  String checkImageUrl(String url) {
    if(url == null) {
      return 'https://static.thenounproject.com/png/583402-200.png';
    } else {
      return url;
    }
  }
}
