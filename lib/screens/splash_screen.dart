import 'package:bookmarkit/screens/bookmark_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:bookmarkit/business/bookmark_list.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookmarkList _bookList = Provider.of<BookmarkList>(context);
    if (_bookList.apiState == apiStateEnum.notCalled) {
      _bookList.apiState = apiStateEnum.called;
      _bookList.updateList();
    }
    if (_bookList.list.isNotEmpty) {
      WidgetsBinding.instance
          .addPostFrameCallback((_) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => BookmarkListScreen(
              bookmarksList: _bookList.list,
            )),
      ));
    }

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
