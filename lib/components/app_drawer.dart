import 'package:flutter/material.dart';
import 'package:shop_project/utils/routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text(
              'Bem Vindo(a) à Asiloja!',
            ),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Loja'),
            onTap: (){ Navigator.of(context).pushReplacementNamed(
              AppRoutes.homePage
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Pedidos'),
            onTap: (){ Navigator.of(context).pushReplacementNamed(
              AppRoutes.orders
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shopping_cart_sharp),
            title: Text('Carrinho'),
            onTap: (){ Navigator.of(context).pushReplacementNamed(
              AppRoutes.cart
              );
            },
          ),
        ],
      ),
    );
  }
}