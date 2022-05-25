import 'package:fast_database_sync/modules/sync_database/sync_repository_interface.dart';

class SyncTime {
  String label;
  DateTime startedIn;
  DateTime completedIn;
  int recordsChanged;

  SyncTime(this.label, this.startedIn, this.completedIn, this.recordsChanged);
}

class SyncController {
  final ISyncRepository sourceRepository;
  final ISyncRepository targetRepository;

  SyncController({
    required this.sourceRepository,
    required this.targetRepository,
  });

  DateTime? updatedAt;
  List<SyncTime> synchronizationRecord = [];
  int recordsChanged = 0;

  Future<bool> fastSync() async {
    try {
      recordsChanged = 0;
      final startedIn = DateTime.now();

      final customersSync = await _syncCustomers(updatedAt: updatedAt);
      final productsSync = await _syncProducts(updatedAt: updatedAt);

      if (customersSync && productsSync) {
        updatedAt = startedIn;
        _recordSyncTime(
          SyncTime(
            'Sincronização Rápida',
            startedIn,
            DateTime.now(),
            recordsChanged,
          ),
        );
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> oldSync() async {
    try {
      recordsChanged = 0;
      final startedIn = DateTime.now();

      final customersSync = await _syncCustomers();
      final productsSync = await _syncProducts();

      if (customersSync && productsSync) {
        _recordSyncTime(
          SyncTime(
            'Sincronização Antiga',
            startedIn,
            DateTime.now(),
            recordsChanged,
          ),
        );
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> _syncCustomers({DateTime? updatedAt}) async {
    try {
      final customers = await sourceRepository.getCustomers(
        updatedAt: updatedAt,
      );
      if (customers.isEmpty) {
        print('Sem atualizações pendentes de clientes');
        return true;
      }
      recordsChanged += customers.length;
      final saved = await targetRepository.saveOrUpdateCustomers(customers);
      print('${customers.length} clientes savos com sucesso? $saved');
      return saved;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> _syncProducts({DateTime? updatedAt}) async {
    try {
      final products = await sourceRepository.getProducts(
        updatedAt: updatedAt,
      );
      if (products.isEmpty) {
        print('Sem atualizações pendentes de produtos');
        return true;
      }
      recordsChanged += products.length;
      final saved = await targetRepository.saveOrUpdateProducts(products);
      print('${products.length} produtos savos com sucesso? $saved');
      return saved;
    } catch (e) {
      print(e);
      return false;
    }
  }

  void _recordSyncTime(SyncTime syncTime) {
    synchronizationRecord.add(syncTime);
  }
}
