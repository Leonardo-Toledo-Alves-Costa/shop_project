import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop_project/models/cart.dart';
import 'package:shop_project/models/order.dart';

class OrderList with ChangeNotifier{
  final List<Order> _orderItem = [];

  List<Order> get orderItem {
    return [..._orderItem];
  }

  int get itemsCount{
    return orderItem.length;
  }

  void addOrder(Cart cart){
    _orderItem.insert(
      0, 
      Order(
        id: Random().nextDouble().toString(), 
        total: cart.totalPrice!, 
        orderProducts: cart.item.values.toList(), 
        date: DateTime.now()
        )
      );
    notifyListeners();
  }

}