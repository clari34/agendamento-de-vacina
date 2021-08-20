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
          top: 50,
          left: 50,
          right: 50,
        ),
        color: Colors.white,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  width: 400,
                  height: 150,
                  child: Image.asset('assets/imagens/ampola.jpeg'),
                ),
                Divider(),
                Container(
                  width: 450,
                  height: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Color(0xFFDA97FF), Color(0xFF138AB6)],
                  )),
                  child: Text(
                    "Esse aplicativo tem como objetivo garantir segurança e organização na hora de receber a sua vacina!\n Lembre-se: Vacinas Salvam Vidas!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ),
                Divider(),
                Container(
                  width: 450,
                  height: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Color(0xFFDA97FF), Color(0xFF138AB6)],
                  )),
                  child: Text(
                    "Documentação necessária: \n -Comprovante de Residência; \n -Identidade; \n -Cartão do SUS.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ),
                Divider(),
                Container(
                  width: 450,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Color(0xFFDA97FF), Color(0xFF138AB6)],
                  )),
                  child: Text(
                    "Perfil do Instagram para mais informações: \n prefeituradearapiraca",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
