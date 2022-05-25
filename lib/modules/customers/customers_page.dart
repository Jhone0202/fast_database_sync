import 'package:fast_database_sync/modules/customers/customers_repository_sqlite.dart';
import 'package:fast_database_sync/shared/models/model_tab_parc.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatefulWidget {
  static const String routeName = '/customers';
  const CustomersPage({Key? key}) : super(key: key);

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  final repository = CustomersRepositorySqlite();
  List<TabParc> customers = [];

  @override
  void initState() {
    super.initState();
    _loadCustomers();
  }

  Future _loadCustomers() async {
    customers = await repository.getCustomers();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
      ),
      body: ListView.builder(
        itemCount: customers.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            customers[index].nomparc ?? customers[index].sobparc ?? '',
          ),
        ),
      ),
    );
  }
}
