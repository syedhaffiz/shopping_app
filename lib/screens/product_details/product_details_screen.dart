import 'package:flutter/material.dart';

import '../../models/Product.dart';
import './components/custom_app_bar.dart';
import './components/body.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      // By default our background color is white
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}

// We need to pass the product to the details screen
// And we use name route, so we need to create an argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
