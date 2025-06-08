import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shop_project/models/cart_item.dart';
import 'package:shop_project/models/product.dart';

class Cart with ChangeNotifier{
  Map<String, CartItem> _item = {};

  Map<String, CartItem> get item{
    return {..._item};
  }

  int itemsQuantity(){
    return _item.length;
  }

  double? get totalPrice{
    double total = 0.0;
    _item.forEach((key, cartItem){
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItemCart(Product product){
    if(_item.containsKey(product.id)){
      _item.update(product.id,
       (existingItem) => CartItem(
        id: existingItem.id,
        productID: existingItem.productID,
        name: existingItem.name,
        quantity: existingItem.quantity + 1,
        price: existingItem.price)
      );
    }else{
      _item.putIfAbsent(product.id,
       ()=> CartItem(
        id: Random().nextDouble().toString(),
        productID: product.id,
        name: product.name,
        quantity: 1,
        price: product.price)
      );
    }
    notifyListeners();
  }

  void removeItem(String productID){
    _item.remove(productID);
    notifyListeners();
  }

  void clear(){
    _item = {};
    notifyListeners();
  }
} 