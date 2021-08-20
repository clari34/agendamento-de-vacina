import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/op_agendamento.dart';

class CadsPage extends StatefulWidget {
  const CadsPage({Key? key}) : super(key: key);
  @override
  _CadsPageState createState() => _CadsPageState();
}

class _CadsPageState extends State<CadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  buildAppBar() {
    return AppBar(
      title: Text('CADASTRO DE USUÁRIOS'),
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
          top: 20,
          left: 20,
          right: 20,
        ),
        color: Colors.white,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/imagens/user.jpeg'),
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'Nome Completo',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'CPF (apenas o número, sem "." ou "-")',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'Cidade e UF',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      labelText: 'Data de Nascimento (Ex.: 22/22/2222)',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'Sexo',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
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
                      Radius.circular(10),
                    ),
                  ),
                  child: SizedBox.expand(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OpPage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            "Cadastrar",
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
                            Icons.how_to_reg,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
