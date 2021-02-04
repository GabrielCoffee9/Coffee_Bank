import 'package:coffeebank/Components/rounded_input_field.dart';
import 'package:coffeebank/Components/signup_process_check.dart';
import 'package:coffeebank/Utils/Themes.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<LoginScreen> {
  var _light = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var _icon = _light ? Icons.wb_sunny : Icons.nightlight_round;

    return Theme(
      data: _light ? BankThemes.lightTheme : BankThemes.darkTheme,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.fromLTRB(32, 90, 32, 0),
          children: [
            Text(
              'Welcome to Coffee Bank!',
              textAlign: TextAlign.center,
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
              textAlign: TextAlign.center,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(_icon),
                Switch(
                  value: _light,
                  onChanged: (state) {
                    setState(
                      () {
                        _light = state;
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
