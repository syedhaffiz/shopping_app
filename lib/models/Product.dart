import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.title,
    @required this.description,
    @required this.images,
    @required this.colors,
    @required this.price,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

// Demo priducts

List<Product> demoProducts = [
  Product(
    title: "Wireless Controller for PS4™",
    description:
        "Elevate your competitive play with two additional, programmable buttons for your DUALSHOCK 4 wireless controller.",
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 64.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    title: "Logitech Wireless Headset",
    description:
        "Cut loose from your PC and roam freely as you talk. Lightweight and long-range wireless headset lets you listen and chat up to 33 ft. (10 m). Laser-tuned speaker drivers and noise-cancelling microphone delivers clear calls and stereo sound",
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 29.99,
    rating: 3.9,
    isFavourite: true,
    isPopular: false,
  ),
  Product(
    title: "Gloves XC Omega - Polygon",
    description:
        "The fun and trendy design makes these XC Omega gloves look elegant. Not only that, the stitching of the product is very neat. With lycra mesh, lycra, airmesh, clarino, and padding foam materials, this product is very comfortable to wear.",
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 36.49,
    rating: 4.3,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    title: "Nike Sport Man Pant - White",
    description:
        "The Nike Dri-FIT Trousers are crafted from a soft, jersey fabric that is heathered with a brushed back for added loft and comfort. The tapered legs, elastic waistband and roomy gusset let you move freely and without distraction while you shift positions and poses",
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 49.99,
    rating: 4.1,
    isFavourite: false,
    isPopular: true,
  ),
];
