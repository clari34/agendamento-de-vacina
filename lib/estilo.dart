import 'package:flutter_application_1/vacina.dart';
import 'package:flutter_application_1/solicitacao.dart';
import 'package:flutter_application_1/tela_login.dart';
import 'package:flutter/material.dart';

class VacinacaoWidget extends StatefulWidget {
  final Vacinacao vacinas;
  const VacinacaoWidget({Key? key, required this.vacinas}) : super(key: key);

  @override
  _VacinacaoWidgetState createState() => _VacinacaoWidgetState();
}

class _VacinacaoWidgetState extends State<VacinacaoWidget> {
  Vacinacao get vacinas => widget.vacinas;

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
