import 'dart:js';
import 'package:flutter_application_1/solicitacao.dart';
import 'package:flutter/material.dart';

String data = '10/08/2021';
String data1 = '10/11/2021';


class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }
}

buildBody(){
  return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(
            top: 50,
            left: 90,
            right:90,
          ),
        ),

        SizedBox(
          width: 60,
          height: 60,
          child: Image.asset("assets/imagens/user.jpeg"),
        ),

        SizedBox(height: 10),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Maria José dos Santos'),
          subtitle: Text( ' | CPF: 145.698.789-55'
          '  | Vacina: Pfizer'
          '  |  Primeira dose'
          '  |  Endereço: Posto de Saúde Boa Vista'
          '  |  Senha: 859789'
          '  |  Horário: 08:00h |'),
          trailing: Text(data) ,
          onTap: () {
            print('Agendado!');
          },
          selected: true,
        ),

        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Maria José dos Santos'),
          subtitle: Text( ' | CPF: 145.698.789-55'
          '  | Vacina: Pfizer'
          '  |  Segunda dose'
          '  |  Endereço: Posto de Saúde Boa Vista'
          '  |  Senha: 859789'
          '  |  Horário: 13:00h |'),
          trailing: Text(data1) ,
          onTap: () {
            print('Agendado!');
          },
          selected: true,
        ),

        SizedBox(height: 260),
        Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFFDA97FF), Color(0xFF138AB6)],
                  ),
                borderRadius: BorderRadius.all(
                    Radius.circular(50),
                ),
                ),
                child: SizedBox.expand(
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
                                fontSize: 18
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 25
                          ),
                          child: Icon(
                            Icons.trending_flat,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
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
      ],  
    );
}


buildAppBar(){
  return AppBar(
    bottom: PreferredSize(
      child: Container(
        color: Colors.purple,
         height: 4.0,
      ), 
      preferredSize: Size.fromHeight(4.0)
    ),
     title: Text('VER AGENDAMENTO'),
     titleSpacing: 10,
     elevation:10,
     toolbarHeight: 80,
     leading: IconButton(
       icon: Icon(Icons.arrow_back),
       onPressed: () {},
     ),
     flexibleSpace: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Color(0xFF2C2C6A),
             Color(0xFF104A89),
             Color(0xFF138AB6)
           ],
           begin: Alignment.bottomRight,
           end: Alignment.topLeft,
         )
       ),
     ),
    );
}

