import 'package:flutter_application_1/database/database_helper.dart';
import 'package:flutter_application_1/cadastro.dart';
import 'package:flutter_application_1/solicitacao.dart';
import 'package:flutter_application_1/vacina.dart';
import 'package:flutter_application_1/teste.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';

class VacinacaoDao {
  Future<List<Vacinacao>> cadastrarUsuario() async {
    List<Vacinacao> listaVacinas = <Vacinacao>[];
    DatabaseHelper databaseHelper = DatabaseHelper();
    Database db = await databaseHelper.db;

    String sql = 'SELECT * FROM vacina';
    final result = await db.rawQuery(sql);

    for (var json in result) {
      Vacinacao vacinas = Vacinacao.fromJson(json);
      listaVacinas.add(vacinas);
    }

    print(listaVacinas.length);
    return listaVacinas;
  }
}
