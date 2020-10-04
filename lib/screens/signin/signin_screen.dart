import 'package:flutter/material.dart';

import 'components/body.dart';

class SigninScreen extends StatelessWidget {
  static String routeName = "/signin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
