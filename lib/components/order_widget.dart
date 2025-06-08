import 'package:flutter/material.dart';
import 'package:shop_project/models/order.dart';

class OrderWidget extends StatelessWidget {
  final Order order;
  const OrderWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('R\$${order.total.toStringAsFixed(2)}'),
      ),
    );
  }
}