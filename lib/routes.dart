import 'package:flutter/widgets.dart';
import 'package:shopping_app/screens/signin/signin_screen.dart';
import 'package:shopping_app/screens/splash/splash_screen.dart';

// All routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
};
