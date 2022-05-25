import 'package:fast_database_sync/shared/models/model_tab_parc.dart';

abstract class ICustomersRepository {
  Future<List<TabParc>> getCustomers({String? search, int? limit, int? offset});
}
