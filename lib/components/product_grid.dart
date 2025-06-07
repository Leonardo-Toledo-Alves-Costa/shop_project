import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/components/product_item_widget.dart';
import 'package:shop_project/models/product.dart';
import 'package:shop_project/models/product_list.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
  final provider = Provider.of<ProductList>(context);
  final List<Product> loadedProducts = provider.items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: (_) => loadedProducts[i],
        child: ProductItemWidget(),
      ), 
      itemCount: loadedProducts.length, 
    );
  }
}