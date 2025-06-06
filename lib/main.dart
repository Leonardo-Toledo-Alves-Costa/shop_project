import 'package:flutter/material.dart';
import 'package:shop_project/screens/product_overview_page.dart';

void main() {
  runApp(const ShopProject());
}

class ShopProject extends StatelessWidget {
  const ShopProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue,
          secondary: Colors.greenAccent,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Morning',
            fontSize: 68.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            letterSpacing: 2.0,
          ),
          bodyMedium: TextStyle(
            fontSize: 18.0,
            color: Colors.black87,
          ),
        ),
      ),
      home: const ProductOverviewPage(),
    );
  }
}

