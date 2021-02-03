import 'package:flutter/material.dart';

class SignUpProcessCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const SignUpProcessCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ?",
          style: TextStyle(),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            login ? 'Sign up' : 'Sign in',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
