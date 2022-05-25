import 'dart:convert';

import 'package:fast_database_sync/modules/products/products_repository_interface.dart';
import 'package:fast_database_sync/shared/database/vie_prgr_sqlite.dart';
import 'package:fast_database_sync/shared/models/model_vie_prgr.dart';

class ProductsRepository implements IProductsRepository {
  @override
  Future<List<ViePrgr>> getProducts(
      {String? search, int? limit, int? offset}) async {
    final database = await DatabaseViePrgr().db;
    final res = await database.query(
      'vie_prgr',
      where: '${params()} (${fullSearchFilter(search ?? '')})',
      orderBy: search?.isEmpty == true ? 'TRIM(ideprod)' : null,
      limit: limit,
      offset: offset,
    );

    return res.map((e) {
      final data = Map<String, dynamic>.of(e);
      data.update('imagens', (value) => value == null ? [] : jsonDecode(value));

      return ViePrgr.fromJson(data);
    }).toList();
  }

  String fullSearchFilter(String? search) {
    return '''
    ideprod LIKE "%$search%"
    OR refgrad LIKE "%$search%"
    ''';
  }

  String params() {
    return 'forlinh = 0 AND';
  }
}
