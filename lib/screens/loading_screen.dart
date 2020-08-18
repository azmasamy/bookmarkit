import 'package:bookmarkit/screens/book_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookmarkit/api.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    APIController().fetchData().then((value) => setState(
          () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BookListScreen(value)),
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 20,),
            SpinKitWave(
              color: Colors.white,
              size: 40.0,
              itemCount: 7,
            ),
          ],
        ));
  }
}
