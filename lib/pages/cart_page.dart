import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/components/cart_item.dart';
import 'package:sneaker/models/cart.dart';
import 'package:sneaker/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //heading
                  const Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: ListView.builder(
                        itemCount: value.getUserCart().length,
                        itemBuilder: (context, index) {
                          // get individual shoe
                          Shoe individualShoe = value.getUserCart()[index];
                          //return the Cart item
                          return CartItem(
                            shoe: individualShoe,
                          );
                        }),
                  ),
                ],
              ),
            ));
  }
}
