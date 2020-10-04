import 'package:flutter/material.dart';
import 'package:shopping_app/screens/splash/components/body.dart';
import 'package:shopping_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    // Call this in the starting screen
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
