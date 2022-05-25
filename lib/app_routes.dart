import 'package:fast_database_sync/modules/customers/customers_page.dart';
import 'package:fast_database_sync/modules/home/home_page.dart';
import 'package:fast_database_sync/modules/products/products_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  final routes = <String, WidgetBuilder>{
    HomePage.routeName: (context) => const HomePage(),
    CustomersPage.routeName: (context) => const CustomersPage(),
    ProductsPage.routeName: (context) => const ProductsPage(),
  };
}
