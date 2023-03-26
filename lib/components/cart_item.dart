import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/models/cart.dart';
import 'package:sneaker/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.all(4.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(widget.shoe.imagePath)),
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(
          '\$' + widget.shoe.price,
          style: TextStyle(color: Colors.deepOrange),
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
