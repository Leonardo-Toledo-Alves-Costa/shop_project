import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/components/app_drawer.dart';
import 'package:shop_project/components/order_widget.dart';
import 'package:shop_project/models/order_list.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meus Pedidos',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (context, i) => OrderWidget(order: orders.orderItem[i])),
      );
  }
}