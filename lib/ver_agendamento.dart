import 'package:flutter/material.dart';
import 'package:flutter_application_1/solicitacao.dart';
import 'package:flutter_application_1/tela_login.dart';

String data = '10/08/2021';
String data1 = '10/11/2021';

class AgendPagePage extends StatefulWidget {
  const AgendPagePage({Key? key}) : super(key: key);
  @override
  _AgendPagePageState createState() => _AgendPagePageState();
}

class _AgendPagePageState extends State<AgendPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('VER AGENDAMENTO'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackButton(),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32)),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Maria José dos Santos'),
                      subtitle: Text(' | CPF: 145.698.789-55'
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
                          '  |  Endereço: Posto de Saúde Boa Vista'
                          '  |  Horário: 13:00h |'),
                      trailing: Text(data1),
                      onTap: () {
                        print('Agendado!');
                      },
                      selected: true,
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
                              MaterialPageRoute(
                                  builder: (context) => AgendPage()),
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
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
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Text(
                                  "Sair",
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
                                  Icons.exit_to_app,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
        ),
      ),
    ),
  );
}
