import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/models/cart.dart';
import 'package:shop_project/models/order_list.dart';
import 'package:shop_project/models/product_list.dart';
import 'package:shop_project/screens/cart_page.dart';
import 'package:shop_project/screens/orders_page.dart';
import 'package:shop_project/screens/product_overview_page.dart';
import 'package:shop_project/screens/project_detail.dart';
import 'package:shop_project/utils/routes.dart';

void main() {
  runApp(const ShopProject());
}

class ShopProject extends StatelessWidget {
  const ShopProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(create: (_) => ProductList()),
          ChangeNotifierProvider(create: (_) => Cart()),
          ChangeNotifierProvider(create: (_) => OrderList()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Colors.blue,
              secondary: Colors.redAccent,
            ),
            textTheme: const TextTheme(
              displayLarge: TextStyle(
                fontFamily: 'Morning',
                fontSize: 68.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
              bodyMedium: TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
              ),
            ),
          ),
          routes: {
            AppRoutes.homePage: (context) => const ProductOverviewPage(),
            AppRoutes.projectDetail: (context) => const ProjectDetail(),
            AppRoutes.cart: (context) => const CartPage(),
            AppRoutes.orders: (context) => const OrdersPage(),
          },
        ),
      );
  }
}

