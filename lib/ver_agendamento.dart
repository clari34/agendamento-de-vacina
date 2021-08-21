import 'package:flutter/material.dart';
import 'package:flutter_application_1/solicitacao.dart';

String data = '10/08/2021';
String data1 = '10/11/2021';

class ViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(),
        body: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Maria José dos Santos'),
                    subtitle: Text(' | CPF: 145.698.789-55'
                        '  | Vacina: Pfizer'
                        '  |  Primeira dose'
                        '  |  Endereço: Posto de Saúde Boa Vista'
                        '  |  Horário: 08:00h |'),
                    trailing: Text(data),
                    onTap: () {
                      print('Agendado!');
                    },
                    selected: true,
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Maria José dos Santos'),
                    subtitle: Text(' | CPF: 145.698.789-55'
                        '  | Vacina: Pfizer'
                        '  |  Segunda dose'
                        '  |  Endereço: Posto de Saúde Boa Vista'
                        '  |  Horário: 13:00h |'),
                    trailing: Text(data1),
                    onTap: () {
                      print('Agendado!');
                    },
                    selected: true,
                  ),
                ],
              )),
            ),
            Container(
                height: 50,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFFDA97FF), Color(0xFF138AB6)],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: SizedBox.expand(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AgendPage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "Alterar dados",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Icon(
                            Icons.trending_flat,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

buildAppBar() {
  return AppBar(
    title: Text('VER AGENDAMENTO'),
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
      )),
    ),
  );
}
