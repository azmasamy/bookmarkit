import 'package:flutter/material.dart';
import 'book.dart';
import 'book_info_screen.dart';

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
      title,
      style: TextStyle(
        fontSize: 22,
        letterSpacing: 2,
      ),
    );
  }

  Widget _buildBookDescription(String description) {
    return Text(
      description,
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
        height: 120,
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
        child: Image.asset(
          image,
          height: 120,
          width: 80,
        ));
  }
}
