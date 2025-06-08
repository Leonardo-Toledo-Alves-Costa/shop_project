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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(product.imageUrl,
               fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('R\$${product.price}',
            style: TextStyle(
              color: Colors.green,
              fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child:
               Text(product.description,
               style: TextStyle(fontSize: 18),
               textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}