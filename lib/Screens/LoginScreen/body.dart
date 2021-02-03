import 'package:coffeebank/Components/rounded_input_field.dart';
import 'package:coffeebank/Components/signup_process_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  ThemeData _lightTheme = ThemeData(
      textTheme: TextTheme(bodyText2: TextStyle(color: Colors.brown[600])),
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.brown[400], textTheme: ButtonTextTheme.primary),
      primaryColor: Colors.white,
      accentColor: Colors.brown);

  ThemeData _darkTheme = ThemeData(
      textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      scaffoldBackgroundColor: Colors.brown[600],
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.brown[400], textTheme: ButtonTextTheme.primary),
      primaryColor: Colors.brown[600]);

  var _light = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Coffee Bank!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Lottie.asset('media/coffeelottie.json', height: 132),
            SizedBox(height: size.height * 0.04),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: 'Your name',
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(
              height: 64,
              width: size.width * 0.8,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.transparent),
                ),
                child: Text(
                  'Sign in',
                  style: TextStyle(),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SignUpProcessCheck(
              press: () => {},
            ),
            SizedBox(height: 32),
            Switch(
                value: _light,
                onChanged: (state) {
                  setState(() {
                    _light = state;
                  });
                }),
          ],
        ),
      )),
    );
  }
}
