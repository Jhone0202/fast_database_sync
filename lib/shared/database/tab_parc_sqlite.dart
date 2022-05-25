import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'tab_parc_migrations.dart';

class DatabaseTabParc {
  static final DatabaseTabParc _dbController = DatabaseTabParc.internal();
  static Database? _db;

  factory DatabaseTabParc() => _dbController;

  Future<Database> get db async {
    if (_db != null) return _db!;
    return _db = await initDb();
  }

  DatabaseTabParc.internal();

  Future<Database> initDb() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final String path = join(directory.path, 'db_tab_parc.db');

    final base = await openDatabase(
      path,
      version: migrationScriptsTabParc.length,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
    return base;
  }

  Future _onCreate(Database db, int version) async {
    for (var i = 1; i <= migrationScriptsTabParc.length; i++) {
      await db.execute(migrationScriptsTabParc[i]!);
    }
  }

  Future _onUpgrade(Database db, int oldVersion, int newVersion) async {
    for (var i = oldVersion + 1; i <= newVersion; i++) {
      await db.execute(migrationScriptsTabParc[i]!);
    }
  }
}
