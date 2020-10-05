import 'package:flutter/material.dart';
import 'package:shopping_app/components/social_card.dart';
import 'package:shopping_app/screens/sign_up/components/signup_form.dart';

import '../../../size_config.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details here or \n continue with social media.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07, // 8% of total height
              ),
              SignupForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "By continuing you confirm that you agree with \nthe Terms and Conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
