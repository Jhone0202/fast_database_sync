import 'package:fast_database_sync/modules/products/products_repository_sqlite.dart';
import 'package:fast_database_sync/shared/models/model_vie_prgr.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  static const String routeName = '/products';
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final repository = ProductsRepository();
  List<ViePrgr> products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future _loadProducts() async {
    products = await repository.getProducts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            products[index].ideprod ?? '',
          ),
          subtitle: Text('Estoque: ${products[index].estiest}'),
          trailing: Text('Cod. ${products[index].codgrad}'),
        ),
      ),
    );
  }
}
