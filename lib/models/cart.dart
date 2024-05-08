import 'package:flutter/material.dart';
import 'fruit.dart';

class Cart extends ChangeNotifier {
  // list of fruits for sales
  List<Fruit> fruitShop = [
    Fruit(
      name: "Avacado",
      price: "1.99",
      description: "Amazing Avacado from South America Brazil",
      imagePath: "images/avacado.png",
    ),
    Fruit(
      name: "Mango",
      price: "0.99",
      description: "Amazing Mango from Guinea Conakry",
      imagePath: "images/mango.png",
    ),
    Fruit(
      name: "Orange",
      price: "1.99",
      description: "Amazing Orange from United Kingdom",
      imagePath: "images/orange.png",
    ),
    Fruit(
      name: "Pineapple",
      price: "1.99",
      description: "Amazing Pineapple from Sierra Leone",
      imagePath: "images/pineapple.png",
    ),
  ];

  // overall list of items in user cart
  List<Fruit> userCart = [];

  // get list of items for sale
  List<Fruit> getFruitList() {
    return fruitShop;
  }

  // get cart
  List<Fruit> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Fruit fruit) {
    userCart.add(fruit);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Fruit fruit) {
    userCart.remove(fruit);
    notifyListeners();
  }
}
