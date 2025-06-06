import 'package:flutter/material.dart';
import 'package:shop_project/screens/product_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
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
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductOverviewPage();
  }
}
