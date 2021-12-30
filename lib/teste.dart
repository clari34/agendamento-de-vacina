import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/database/vacinacao_dao.dart';
import 'package:flutter_application_1/vacina.dart';
import 'package:flutter_application_1/estilo.dart';

class OpPage1 extends StatefulWidget {
  const OpPage1({Key? key}) : super(key: key);
  @override
  _OpPageState createState() => _OpPageState();
}

class _OpPageState extends State<OpPage1> {
  late Future<List<Vacinacao>> listaVacinas;

  @override
  initState() {
    super.initState();
    listaVacinas = VacinacaoDao().cadastrarUsuario();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  buildBody() {
    return FutureBuilder<List<Vacinacao>>(
      future: listaVacinas,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return buildListView(snapshot.data ?? []);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  buildListView(List<Vacinacao> vacina) {
    return ListView.builder(
      itemCount: vacina.length,
      itemBuilder: (BuildContext context, int i) {
        return VacinacaoWidget(vacinas: vacina[i]);
      },
    );
  }
}

buildAppBar() {
  return AppBar(
    title: Text('VER AGENDAMENTO - TESTE'),
    titleSpacing: 10,
    elevation: 10,
    toolbarHeight: 80,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {},
    ),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFDA97FF), Color(0xFF138AB6)],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
    ),
  );
}
