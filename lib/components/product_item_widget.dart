import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/models/product.dart';
import 'package:shop_project/utils/routes.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {
              product.toggleFavorite();
            },
            icon: Icon(product.isFavorite ? Icons.star : Icons.star_border),
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            product.name,
            textAlign: TextAlign.center,
          ) ,
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_sharp),
            color: Colors.blue
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