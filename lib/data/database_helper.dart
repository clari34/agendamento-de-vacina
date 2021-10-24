import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "usuarios.db");

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
        'create table usuarios (id INTEGER PRIMARY KEY, nome varchar(200), cpf varchar(14), email varchar(100), cidade varchar(100), uf varchar(2), data_nascimento varchar(10), sexo varchar(20), senha VARCHAR(50), numero_cartao_sus int);';
    await db.execute(sql);

    sql =
        'create table agendamento(id_agendamento INT PRIMARY KEY AUTO_INCREMENT, local VARCHAR(100), dia VARCHAR(20), horario VARCHAR(20) id_usuario INT, CONSTRAINT fk_usuario_agenda FOREIGN KEY(id_usuario) REFERENCES usuarios(id));';
    await db.execute(sql);
  }
}
