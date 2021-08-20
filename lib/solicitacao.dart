import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AgendPage extends StatefulWidget {
  const AgendPage({Key? key}) : super(key: key);
  @override
  _AgendPageState createState() => _AgendPageState();
}

class _AgendPageState extends State<AgendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  buildAppBar() {
    return AppBar(
      title: Text('SOLICITAR AGENDAMENTO'),
      titleSpacing: 10,
      elevation: 10,
      toolbarHeight: 80,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
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

  buildBody() {
    return Material(
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 60,
          right: 60,
        ),
        color: Colors.white,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'Confirme seu nome completo',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText:
                        'Confirme seu CPF (apenas o número, sem "." ou "-")',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Número do Cartão do SUS',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'Local de preferência (posto de saúde)',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    labelText: 'Dia de preferência (Ex.: 22/22/2222)',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'Horário de preferência (manhâ, tarde ou noite)',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFF104A89)),
                onPressed: () {},
                child: Text(
                  'SOLICITAR',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
