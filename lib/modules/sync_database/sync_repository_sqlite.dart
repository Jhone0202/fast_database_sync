import 'dart:convert';

import 'package:fast_database_sync/modules/sync_database/sync_repository_interface.dart';
import 'package:fast_database_sync/shared/database/tab_parc_sqlite.dart';
import 'package:fast_database_sync/shared/database/vie_prgr_sqlite.dart';
import 'package:fast_database_sync/shared/models/model_vie_prgr.dart';
import 'package:fast_database_sync/shared/models/model_tab_parc.dart';
import 'package:sqflite/sqflite.dart';

class SyncRepositorySqlite extends SqliteImp implements ISyncRepository {
  @override
  Future<List<TabParc>> getCustomers({int? limit, DateTime? updatedAt}) async {
    return [];
  }

  @override
  Future<List<ViePrgr>> getProducts({int? limit, DateTime? updatedAt}) async {
    return [];
  }

  @override
  Future<bool> saveOrUpdateCustomers(List<TabParc> customers) async {
    bool saved = false;
    final database = await DatabaseTabParc().db;
    for (final parc in customers) {
      final already = await find(database, 'tab_parc', 'codparc', parc.codparc);
      if (already) {
        final data = jsonParseInclude(parc);
        final res = await database.update(
          'tab_parc',
          data,
          where: 'codparc = ?',
          whereArgs: [parc.codparc],
        );
        saved = res != 0;
      } else {
        final data = jsonParseInclude(parc);
        final res = await database.insert('tab_parc', data);
        saved = res != 0;
      }
    }
    return saved;
  }

  @override
  Future<bool> saveOrUpdateProducts(List<ViePrgr> products) async {
    bool saved = false;
    final database = await DatabaseViePrgr().db;

    for (final prgr in products) {
      final already = await find(database, 'vie_prgr', 'codgrad', prgr.codgrad);
      final data = jsonParseIncludeImages(prgr);

      if (already) {
        final res = await database.update(
          'vie_prgr',
          data,
          where: 'codgrad = ?',
          whereArgs: [prgr.codgrad],
        );
        saved = res != 0;
      } else {
        final res = await database.insert('vie_prgr', data);
        saved = res != 0;
      }
    }
    return saved;
  }

  Map<String, dynamic> jsonParseIncludeImages(ViePrgr prgr) {
    final data = prgr.toJson();
    data['imagens'] = jsonEncode(prgr.imagens);
    return data;
  }

  Map<String, dynamic> jsonParseInclude(TabParc parc) {
    final data = parc.toJson();
    data['enderecos'] = json.encode(parc.enderecos);
    data['classificacoes'] = json.encode(parc.classificacoes);
    data['parcelasemaberto'] = json.encode(parc.parcelasemaberto);
    data['planos'] = json.encode(parc.planos);
    return data;
  }
}

abstract class SqliteImp {
  Future<bool> find(
      Database db, String tab, String keyName, dynamic value) async {
    try {
      final res = await db.query(
        tab,
        where: '$keyName = ?',
        whereArgs: [value],
        limit: 1,
      );
      return res.isNotEmpty;
    } catch (e) {
      print('$e');
      return false;
    }
  }
}
