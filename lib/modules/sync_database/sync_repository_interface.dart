import 'package:fast_database_sync/shared/models/model_tab_parc.dart';
import 'package:fast_database_sync/shared/models/model_vie_prgr.dart';

abstract class ISyncRepository {
  Future<List<TabParc>> getCustomers({int? limit, DateTime? updatedAt});
  Future<List<ViePrgr>> getProducts({int? limit, DateTime? updatedAt});
  Future<bool> saveOrUpdateCustomers(List<TabParc> customers);
  Future<bool> saveOrUpdateProducts(List<ViePrgr> products);
}
