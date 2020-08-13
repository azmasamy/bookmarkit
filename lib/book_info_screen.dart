import 'package:flutter/material.dart';
import 'book.dart';
class BookInfoScreen extends StatelessWidget{

  final Book _book;

  BookInfoScreen({Book book})
      : _book = book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book Info", style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      _book.image,
                      height: 240,
                      width: 160,
                    )),
                SizedBox(width: 8.0,),
                Expanded(
                  child: Container(
                    height: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _book.title,
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          _book.description,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}