import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
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
