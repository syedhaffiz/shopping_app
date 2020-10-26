import 'package:flutter/widgets.dart';
import 'package:shopping_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopping_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopping_app/screens/home/home_screen.dart';
import 'package:shopping_app/screens/otp/otp_screen.dart';
import 'package:shopping_app/screens/product_details/product_details_screen.dart';
import 'package:shopping_app/screens/sign_up/sign_up_screen.dart';
import 'package:shopping_app/screens/signin/signin_screen.dart';
import 'package:shopping_app/screens/signin_success/signin_success_screen.dart';
import 'package:shopping_app/screens/splash/splash_screen.dart';

// All routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SigninSuccessSreen.routeName: (context) => SigninSuccessSreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
};
