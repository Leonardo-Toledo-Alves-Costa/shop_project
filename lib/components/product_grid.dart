import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/components/product_item_widget.dart';
import 'package:shop_project/models/product.dart';
import 'package:shop_project/models/product_list.dart';

class ProductGrid extends StatelessWidget {

  final bool showFavorites;

  const ProductGrid(
    {super.key, required this.showFavorites}
  );



  @override
  Widget build(BuildContext context) {
  final provider = Provider.of<ProductList>(context);
  final List<Product> loadedProducts = showFavorites ? provider.favoriteItems : provider.items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: loadedProducts[i],
        child: ProductItemWidget(),
      ), 
      itemCount: loadedProducts.length, 
    );
  }
}