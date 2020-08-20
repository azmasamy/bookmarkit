import 'package:bookmarkit/models/bookmark.dart';
import 'package:flutter/material.dart';

class BookmarkInfoScreen extends StatelessWidget{
  final Bookmark _bookmark;

  BookmarkInfoScreen({Bookmark bookmark})
      : _bookmark = bookmark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bookmarkit Info", style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    checkImageUrl(_bookmark.image),
                    height: 240,
                    width: 160,
                  )),
              SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    formatTitle(_bookmark.title),
                    style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 2
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    formatDescription(_bookmark.description),
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

  String checkImageUrl(String url) {
    if(url == null) {
      return 'https://static.thenounproject.com/png/583402-200.png';
    } else {
      return url;
    }
  }
}