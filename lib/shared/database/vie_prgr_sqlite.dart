import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'vie_prgr_migrations.dart';

class DatabaseViePrgr {
  static final DatabaseViePrgr _dbController = DatabaseViePrgr.internal();
  static Database? _db;

  factory DatabaseViePrgr() => _dbController;

  Future<Database> get db async {
    if (_db != null) return _db!;
    return _db = await initDb();
  }

  DatabaseViePrgr.internal();

  Future<Database> initDb() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final String path = join(directory.path, 'db_vie_prgr.db');

    final base = await openDatabase(
      path,
      version: migrationScriptsViePrgr.length,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
    return base;
  }

  Future _onCreate(Database db, int version) async {
    for (var i = 1; i <= migrationScriptsViePrgr.length; i++) {
      await db.execute(migrationScriptsViePrgr[i]!);
    }
  }

  Future _onUpgrade(Database db, int oldVersion, int newVersion) async {
    for (var i = oldVersion + 1; i <= newVersion; i++) {
      await db.execute(migrationScriptsViePrgr[i]!);
    }
  }
}
