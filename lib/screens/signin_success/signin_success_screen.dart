import 'package:flutter/material.dart';

import './components/body.dart';

class SigninSuccessSreen extends StatelessWidget {
  static String routeName = "/signin_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
