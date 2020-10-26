import 'package:flutter/material.dart';

import '../../../components/search_field.dart';
import '../../../components/icon_btn_with_badge.dart';
import '../../../size_config.dart';
import '../../cart/cart_screen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithBadge(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconButtonWithBadge(
            svgSrc: "assets/icons/Bell.svg",
            badgeValue: 4,
            press: () {},
          ),
        ],
      ),
    );
  }
}
