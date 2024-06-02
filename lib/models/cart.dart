import 'package:flutter/material.dart';
import 'package:sneakers_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "RS-X Efekt Turbo",
        price: "9,599",
        imagePath: "lib/images/RS-X-Efekt-Turbo-Unisex-Sneakers.png",
        description:
            "This future-retro silhouette made waves when it dropped in 2018, celebrated for its disruptive design, fresh material mixes, and bold colors."),
    Shoe(
        name: "CA Pro Glitch",
        price: "5,399",
        imagePath: "lib/images/CA-Pro-Glitch-Unisex-Sneakers.png",
        description:
            "These sneaks feature subtly distorted lines and overlays alongside reinterpreted, asymmetrical branding."),
    Shoe(
        name: "RS 3.0 Suede",
        price: "7,199",
        imagePath: "lib/images/ezgif.com-webp-to-png-converter.png",
        description:
            "Featuring the classic pod design on the midsole and a graphic PUMA Formstrip, it's full of sharp little details."),
    Shoe(
      name: "RS-X Efekt Uninvisible",
      price: "7,199",
      imagePath: "lib/images/RS-X-Efekt-Uninvisible-Unisex-Sneakers.png",
      description:
          "This 75th anniversary celebration design highlights PUMA's key value – unity, togetherness, and strength.",
    ),
    Shoe(
        name: "Trinity",
        price: "7,999",
        imagePath: "lib/images/Trinity-Mens-Sneakers.png",
        description:
            "This edition features a mesh base with cool overlay details and a sporty silhouette, for sneakers that pack a punch.")
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
