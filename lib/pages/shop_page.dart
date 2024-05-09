import 'package:app_two_fruity_ui/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/fruit.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add fruit to cart
  void addFruitToCart(Fruit fruit) {
    Provider.of<Cart>(context, listen: false).addItemToCart(fruit);

    // alert the user, fruit successfully added
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
