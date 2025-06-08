import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/components/cart_item_widget.dart';
import 'package:shop_project/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Cart cart = Provider.of(context);
    final cartItems = cart.item.values.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Compras',
          style: Theme.of(context).textTheme.displayLarge,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
      ),
      body: Expanded(child: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, i) => CartItemwidget(cartItem: cartItems[i]),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Card(
          elevation: 20,
          margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero, 
      side: BorderSide(
        color: Colors.black54, 
        width: 3,           
      ),
    ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:',
                style: TextStyle(
                  fontSize: 15
                ),
                ),
                SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(15),
                  child: Chip(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                    label: Text(
                      'R\$${cart.totalPrice?.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Theme.of(context).primaryTextTheme.bodyLarge?.color,
                      ),
                    )
                    ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                  )), 
                  child: Text('COMPRAR'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}