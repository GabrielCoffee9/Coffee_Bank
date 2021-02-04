import 'package:coffeebank/Screens/LoginScreen/body.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 2,
        navigateAfterSeconds: new LoginScreen(),
        title: new Text(
          'Coffee Bank',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        image: new Image.asset('media/coffeecup.png', width: 100, height: 100),
        backgroundColor: Colors.brown,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 50.0,
        loaderColor: Colors.white);
  }
}
