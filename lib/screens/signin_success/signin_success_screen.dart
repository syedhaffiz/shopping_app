import 'package:flutter/material.dart';

import 'package:shopping_app/screens/signin_success/components/body.dart';

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
