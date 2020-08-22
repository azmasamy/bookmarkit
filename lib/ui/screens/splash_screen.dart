import 'package:bookmarkit/ui/screens/bookmark_list_screen.dart';
import 'package:bookmarkit/resources/bookmark_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    BookmarkAPI().fetchData().then((value) => setState(
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BookmarkListScreen(bookmarksList: value)),
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
