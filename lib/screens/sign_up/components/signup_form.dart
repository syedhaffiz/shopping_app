import 'package:flutter/material.dart';

import 'package:shopping_app/components/default_button.dart';
import 'package:shopping_app/components/form_error.dart';

import './../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formkey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfirmPasswordFormField(),
          FormErrors(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formkey.currentState.validate()) {
                // TODO: Go to complete profile page
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });

          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPwdNullError)) {
          setState(() {
            errors.remove(kPwdNullError);
          });
        } else if (value.length >= 6 && errors.contains(kShortPwdError)) {
          setState(() {
            errors.remove(kShortPwdError);
          });
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPwdNullError)) {
          setState(() {
            errors.add(kPwdNullError);
          });
          return "";
        } else if (value.length < 6 && !errors.contains(kShortPwdError)) {
          setState(() {
            errors.add(kShortPwdError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (password == confirmPassword) {
          setState(() {
            errors.remove(kMatchPwdsError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return "";
        } else if (password != confirmPassword &&
            !errors.contains(kMatchPwdsError)) {
          setState(() {
            errors.add(kMatchPwdsError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
