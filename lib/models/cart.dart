import 'package:flutter/cupertino.dart';
import 'package:sneaker/models/shoe.dart';

class Cart extends ChangeNotifier {
  //List of shoes for sale
  List<Shoe> ShoeShop = [
    Shoe(
        name: 'Simple',
        price: '149',
        imagePath: 'lib/images/shoe1.jpg',
        description: 'The forward Thinking of Designing'),
    Shoe(
        name: 'Air-Jordan',
        price: '230',
        imagePath: 'lib/images/shoe2.jpg',
        description: "You\'ve got the hop and speed-lace on shoe"),
    Shoe(
        name: 'Air-Jordan4',
        price: '300',
        imagePath: 'lib/images/shoe3.jpg',
        description: 'A secure  midfoot strap is suited for score'),
    Shoe(
        name: 'Air-Max',
        price: '100',
        imagePath: 'lib/images/shoe4.jpg',
        description: 'Bounce and questioning'),
    Shoe(
        name: 'Fashion',
        price: '400',
        imagePath: 'lib/images/shoe5.jpg',
        description: 'Fit your foot wit confidence'),
  ];

  //List of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return ShoeShop;
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

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
