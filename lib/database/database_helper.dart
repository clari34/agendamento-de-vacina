import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class DatabaseHelper {
  late Database _db;

  Future<Database> get db async {
    _db = await _initDB();
    return _db;
  }

  _initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "vacinas.db");

    print(path);
    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return db;
  }

  Future<FutureOr<void>> _onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE vacina (id INTERGER PRIMARY KEY, nome VARCHAR(200), cpf VARCHAR(14), email VARCHAR(100), local VARCHAR(100), dataNascimento VARCHAR(10), sexo VARCHAR(20), senha VARCHAR(50), numeroCartaoSus INTERGER, localVac VARCHAR(100), diaVac VARCHAR(20), horario VARCHAR(20));';
    await db.execute(sql);

    sql =
        'INSERT INTO vacina (1, nome1, cpf1, email1, local1, dat1, sexo1, senha1, num1, loc1, d1, h1);';
    await db.execute(sql);
  }
}
