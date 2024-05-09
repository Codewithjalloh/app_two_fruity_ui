import 'package:app_two_fruity_ui/components/message_tile.dart';
import 'package:app_two_fruity_ui/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/fruit_tile.dart';
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
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: const Text(
          "Successfully added",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // search
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                // message
                MessageTile(),

                // hot picks
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot Picks 🔥",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Color.fromARGB(255, 133, 128, 171),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(bottom: 25),
                    itemCount: value.getFruitList().length,
                    itemBuilder: (context, index) {
                      // get the individual fruit from shop
                      Fruit indvidualFruit = value.getFruitList()[index];
                      // create fruit tile with fruit
                      return FruitTile(
                        imagePath: indvidualFruit.imagePath,
                        fruitName: indvidualFruit.name,
                        price: indvidualFruit.price,
                        description: indvidualFruit.description,
                        onTap: () => addFruitToCart(indvidualFruit),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                )
              ],
            ));
  }
}
