import 'package:flutter/material.dart';
import 'package:shopping_app/routes.dart';
import 'package:shopping_app/screens/splash/splash_screen.dart';
import 'package:shopping_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
