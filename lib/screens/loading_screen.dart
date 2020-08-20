import 'package:bookmarkit/screens/book_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookmarkit/Models/api.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:bookmarkit/Models/book_list.dart';
import 'package:provider/provider.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BookList _bookList = Provider.of<BookList>(context);

    APIController().fetchData().then(
          (value) => () {
            _bookList.list = value;

            print(_bookList.list[0].description);

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => BookListScreen(
                        bookmarksList: _bookList.list,
                      )),
            );
          },
        );

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "BOOKMARKIT",
            style: TextStyle(
              fontSize: 40,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SpinKitWave(
            color: Colors.white,
            size: 40.0,
            itemCount: 7,
          ),
        ],
      ),
    );
  }
}
