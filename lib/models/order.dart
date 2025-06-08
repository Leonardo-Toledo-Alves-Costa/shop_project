import 'package:shop_project/models/cart_item.dart';

class Order {
  final String id;
  final double total;
  final List<CartItem> orderProducts;
  final DateTime date;

  Order({
    required this.id,
    required this.total,
    required this.orderProducts,
    required this.date
  });
}