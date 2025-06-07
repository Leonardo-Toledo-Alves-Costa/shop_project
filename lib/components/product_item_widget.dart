import 'package:flutter/material.dart';
import 'package:shop_project/models/product.dart';
import 'package:shop_project/utils/routes.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            product.name,
            textAlign: TextAlign.center,
          ) ,
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).primaryColor
            ),
        ),
        child: GestureDetector(
          child: Image.network(product.imageUrl, fit: BoxFit.cover,),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.projectDetail,
              arguments: product
            );
          },
          ),
      ),
    );
  }
}