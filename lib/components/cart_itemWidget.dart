import 'package:flutter/material.dart';
import 'package:shop_project/models/cart_item.dart';

class CartItemwidget extends StatelessWidget {
  final CartItem cartItem;
  const CartItemwidget({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Text(cartItem.name);
  }
}