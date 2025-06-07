import 'package:flutter/material.dart';
import 'package:shop_project/models/product.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({super.key});


  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.name,
          style: Theme.of(context).textTheme.displayLarge,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
      ),
    );
  }
}