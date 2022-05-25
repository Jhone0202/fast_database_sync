import 'package:fast_database_sync/shared/models/model_vie_prgr.dart';

abstract class IProductsRepository {
  Future<List<ViePrgr>> getProducts({String? search, int? limit, int? offset});
}
