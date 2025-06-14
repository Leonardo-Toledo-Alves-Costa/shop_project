import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/components/app_drawer.dart';
import 'package:shop_project/components/badgee.dart';
import 'package:shop_project/components/product_grid.dart';
import 'package:shop_project/models/cart.dart';
import 'package:shop_project/utils/routes.dart';


enum FilterOptions {
  favorites,
  allProducts,
}
class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({super.key});

  @override
  State<ProductOverviewPage> createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  bool _showFavorites = false;

  @override
  Widget build(BuildContext context) {
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
      padding: const EdgeInsets.only(right: 60.0),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/logoAsimov.png'),
        radius: 20,
      ),
    ),
    PopupMenuButton<FilterOptions>(
      icon: const Icon(Icons.more_vert, color: Colors.white,),
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
              setState(() {
                if (selectedValue == FilterOptions.favorites) {
                  _showFavorites = true;
              } else {
                _showFavorites = false;
              }
              });
            }
    ),
    Consumer<Cart>(
      builder: (context, cart, child) => Badgee(
        value: cart.itemsQuantity().toString(),
        child: child!,
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.cart);
        }, 
        icon: Icon(Icons.shopping_cart_sharp, color: Colors.white,),
      ),
    )
  ],
      ),
      body: ProductGrid(showFavorites: _showFavorites,),
      drawer: AppDrawer(),
    );
  }
}

