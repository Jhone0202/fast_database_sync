import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_database_sync/firebase_options.dart';
import 'package:fast_database_sync/modules/sync_database/sync_repository_interface.dart';
import 'package:fast_database_sync/shared/models/model_vie_prgr.dart';
import 'package:fast_database_sync/shared/models/model_tab_parc.dart';
import 'package:firebase_core/firebase_core.dart';

class SyncRepositoryFirebase extends _FirebaseImp implements ISyncRepository {
  final String cnpj;
  final String filial;

  SyncRepositoryFirebase(this.cnpj, this.filial);

  String get idfili => cnpj + filial;

  @override
  Future<List<TabParc>> getCustomers({int? limit, DateTime? updatedAt}) async {
    final docs = await getTabParcDocs(idfili, limit, updatedAt);
    return docs.map((e) => TabParc.fromJson(e.data())).toList();
  }

  @override
  Future<List<ViePrgr>> getProducts({int? limit, DateTime? updatedAt}) async {
    final docs = await getViePrgrDocs(idfili, limit, updatedAt);
    return docs.map((e) => ViePrgr.fromJson(e.data())).toList();
  }

  @override
  Future<bool> saveOrUpdateCustomers(List<TabParc> customers) async {
    return false;
  }

  @override
  Future<bool> saveOrUpdateProducts(List<ViePrgr> products) async {
    return false;
  }
}

abstract class _FirebaseImp {
  Future _initFirebase() async {
    print('init app');
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<FirebaseFirestore> _baseUrl() async {
    if (Firebase.apps.isEmpty) await _initFirebase();
    return FirebaseFirestore.instance;
  }

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getTabParcDocs(
    String idfili,
    int? limit,
    DateTime? updatedAt,
  ) async {
    final database = await _baseUrl();
    var query =
        database.collection('tab_parc').where('id_fili', isEqualTo: idfili);

    if (updatedAt != null) {
      query =
          query.where('updated_at', isGreaterThan: updatedAt.toIso8601String());
    }

    if (limit != null) query = query.limit(limit);

    final res = await query.get();
    return res.docs;
  }

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getViePrgrDocs(
    String idfili,
    int? limit,
    DateTime? updatedAt,
  ) async {
    final database = await _baseUrl();

    var query = database
        .collection('vie_prgr')
        .where('id_fili', isEqualTo: idfili)
        .where('filesto', isEqualTo: '001')
        .where('tipprod', isEqualTo: 'MA');

    if (updatedAt != null) {
      print(
        'Comparanddo se to campo updated_at do firebase é maior que ${updatedAt.toIso8601String()}',
      );
      query =
          query.where('updated_at', isGreaterThan: updatedAt.toIso8601String());
    }

    if (limit != null) query = query.limit(limit);

    final res = await query.get();
    return res.docs;
  }
}
