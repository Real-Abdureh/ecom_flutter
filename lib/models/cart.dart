import 'package:ecom/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      description: 'The forward-thinking of his latest sinature shoe',
      imagePath: 'lib/images/4.png',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '250',
      description: 'got the hops and speed laced-up',
      imagePath: 'lib/images/4.png',
    ),
    Shoe(
      name: 'KD treys',
      price: '240',
      description: 'suited for scoring binges',
      imagePath: 'lib/images/4.png',
    ),
    Shoe(
      name: 'Kyeri 6',
      price: '190',
      description: 'Bouncy cushioning paired with yet supportive foam',
      imagePath: 'lib/images/4.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
