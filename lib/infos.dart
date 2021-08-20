import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InfosPage extends StatefulWidget {
  const InfosPage({Key? key}) : super(key: key);
  @override
  _CadsPageState createState() => _CadsPageState();
}

class _CadsPageState extends State<InfosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  buildAppBar() {
    return AppBar(
      title: Text('Informações:'),
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
          top: 100,
          left: 100,
          right: 100,
        ),
        color: Colors.white,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/imagens/ampola.jpeg'),
                ),
                Text(
                  'Acompanhe a Rede social',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
