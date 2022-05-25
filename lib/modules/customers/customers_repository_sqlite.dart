import 'dart:convert';

import 'package:fast_database_sync/modules/customers/customers_repository_interface.dart';
import 'package:fast_database_sync/shared/database/tab_parc_sqlite.dart';
import 'package:fast_database_sync/shared/models/model_tab_parc.dart';

class CustomersRepositorySqlite implements ICustomersRepository {
  @override
  Future<List<TabParc>> getCustomers(
      {String? search, int? limit, int? offset}) async {
    final tabParc = await DatabaseTabParc().db;
    final res = await tabParc.query(
      'tab_parc',
      where: 'fgeparc = -1 AND (${fullSearchFilter(search ?? '')})',
      orderBy: search?.isEmpty == true ? 'TRIM(nomparc)' : null,
      limit: limit,
      offset: offset,
    );

    return res.map((e) {
      final data = Map.of(e);
      if (data['enderecos'] != null) {
        data['enderecos'] = json.decode(data['enderecos']! as String);
      }
      if (data['classificacoes'] != null) {
        data['classificacoes'] = json.decode(data['classificacoes']! as String);
      }
      if (data['parcelasemaberto'] != null) {
        data['parcelasemaberto'] =
            json.decode(data['parcelasemaberto']! as String);
      }
      if (data['planos'] != null) {
        data['planos'] = json.decode(data['planos'] as String);
      }
      return TabParc.fromJson(data);
    }).toList();
  }

  String fullSearchFilter(String? search) {
    return '''
    nomparc LIKE "%$search%"
    OR sobparc LIKE "%$search%"
    OR REPLACE(REPLACE(cnpparc,'-',''),'.','') LIKE "%$search%"
    ''';
  }
}
