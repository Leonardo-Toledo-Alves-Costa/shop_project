import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/components/product_grid.dart';
import 'package:shop_project/models/product_list.dart';

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({super.key});

  @override
  State<ProductOverviewPage> createState() => _ProductOverviewPageState();
}

enum FilterOptions {
  favorites,
  allProducts,
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Asiloja',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
    Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/logoAsimov.png'),
        radius: 20,
      ),
    ),
    PopupMenuButton<FilterOptions>(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          value: FilterOptions.favorites,
          child: Text('Somente Favoritos'),
        ),
        PopupMenuItem(
          value: FilterOptions.allProducts,
          child: Text('Todos'),
        ),
      ],
      onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.favorites) {
                provider.showFavoriteOnly();
              } else {
                provider.showAll();
              }
            }
    )
  ],
      ),
      body: ProductGrid(),
    );
  }
}

