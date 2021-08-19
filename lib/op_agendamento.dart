import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/solicitacao.dart';

class OpPage extends StatefulWidget {
  const OpPage({Key? key}) : super(key: key);
  @override
  _OpPageState createState() => _OpPageState();
}

class _OpPageState extends State<OpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  buildAppBar() {
    return AppBar(
      title: Text('AGENDAMENTO'),
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
          colors: [Color(0xFF2C2C6A), Color(0xFF104A89), Color(0xFF138AB6)],
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
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFF104A89)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AgendPage()),
                  );
                },
                child: Text(
                  'SOLICITAR AGENDAMENTO',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFF104A89)),
                onPressed: () {},
                child: Text(
                  'VER AGENDAMENTO',
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
