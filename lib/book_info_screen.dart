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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    _book.image,
                    height: 240,
                    width: 160,
                  )),
              SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    formatTitle(_book.title),
                    style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 2
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    formatDescription(_book.description),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),

            ],
          ),
        ),
      )
    );
  }

  String formatDescription(String description) {
    if(description == null) {
      return "(MISSING DESCRIPTION)";
    } else {
      return description;
    }
  }

  String formatTitle(String title) {
    if (title == null) {
      return "(MISSING TITLE)";
    } else {
      return title;
    }
  }
}