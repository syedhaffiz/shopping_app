import 'package:flutter/widgets.dart';
import 'package:shopping_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopping_app/screens/signin/signin_screen.dart';
import 'package:shopping_app/screens/signin_success/signin_success_screen.dart';
import 'package:shopping_app/screens/splash/splash_screen.dart';

// All routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SigninSuccessSreen.routeName: (context) => SigninSuccessSreen(),
};
