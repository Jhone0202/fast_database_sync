import 'dart:isolate';

import 'package:fast_database_sync/firebase_options.dart';
import 'package:fast_database_sync/main.dart';
import 'package:fast_database_sync/modules/customers/customers_page.dart';
import 'package:fast_database_sync/modules/products/products_page.dart';
import 'package:fast_database_sync/modules/sync_database/sync_controller.dart';
import 'package:fast_database_sync/modules/sync_database/sync_repository_firebase.dart';
import 'package:fast_database_sync/modules/sync_database/sync_repository_sqlite.dart';
import 'package:fast_database_sync/shared/date_util.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final syncController = SyncController(
    sourceRepository: SyncRepositoryFirebase('91202439000152', '001'),
    targetRepository: SyncRepositorySqlite(),
  );

  Future _showLoadingAndExecute(Future<bool> Function() function) async {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Center(
          child: SizedBox(
            width: 64,
            height: 64,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );

    function().then((value) {
      Navigator.pop(context);
      setState(() {});
    }).catchError((_) {
      Navigator.pop(context);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () => _showLoadingAndExecute(syncController.oldSync),
            child: const Text('Sincronização Antiga'),
          ),
          TextButton(
            onPressed: () => _showLoadingAndExecute(syncController.fastSync),
            child: const Text('Sincronização Rápida'),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(
              context,
              CustomersPage.routeName,
            ),
            child: const Text('Clientes'),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(
              context,
              ProductsPage.routeName,
            ),
            child: const Text('Produtos'),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    syncController.updatedAt == null
                        ? ''
                        : 'Atualizado em: ${getNamedDateTime(syncController.updatedAt!)}',
                  ),
                ),
                IconButton(
                  onPressed: () => setState(() {}),
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: syncController.synchronizationRecord.length,
              itemBuilder: (context, index) {
                final register = syncController.synchronizationRecord[index];
                return ListTile(
                  title: Text(register.label),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Levou ${register.completedIn.difference(register.startedIn).inSeconds} segundos para concluír.',
                      ),
                      Text(
                        register.recordsChanged == 0
                            ? 'Sem atualizações pendentes'
                            : '${register.recordsChanged} registros foram atualizados.',
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
