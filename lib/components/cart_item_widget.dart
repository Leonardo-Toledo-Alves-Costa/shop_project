import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/models/cart.dart';
import 'package:shop_project/models/cart_item.dart';

class CartItemwidget extends StatelessWidget {
  final CartItem cartItem;
  const CartItemwidget({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(cartItem.id),
      direction: DismissDirection.startToEnd,
      background: Container(
        color: Theme.of(context).colorScheme.error,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20),
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4
        ),
        child: Icon(Icons.delete,
        color: Colors.white,
        size: 40,
        ),
      ),
      onDismissed: (_) {
        Provider.of<Cart>(
          context,
          listen: false
        ).removeItem(cartItem.productID);
        },
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(padding: EdgeInsets.all(5),
            child: FittedBox(
              child: Text('${cartItem.price}')
            ),),
          ),
          title: Text(cartItem.name, style: TextStyle(fontSize: 16),),
          subtitle: Text('Valor: R\$${cartItem.price * cartItem.quantity}', style: TextStyle(fontSize: 13,)),
          trailing: Text('${cartItem.quantity}x', style: TextStyle(fontSize: 15,), textAlign: TextAlign.center),
        ),
      ),
    );
  }
}