
// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'main.dart';

class paginaInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 237, 200),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(100, 12, 99, 56),
        child: SingleChildScrollView(
          child: menu(),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  //BANNER gradiente
                  Container(
                    width: double.infinity,
                    height: 250.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                        Color.fromARGB(255, 139, 195, 74),
                        Color.fromARGB(255, 14, 87, 52),
                        ],
                      ),
                    ),
                  ),

                  //Texto Header BANNER
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 70.0),
                    child: Text("RASTROS DA MATA",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'AnticDidone',
                        fontSize: 40,
                      ),
                    ),
                  ),

                  //Imagem principal BANNER
                  Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 150.0),
                            height: 190.0,
                            width: 190.0,
                            decoration: BoxDecoration(
                              border: Border.all(width: 5, color: Color.fromARGB(255, 18, 78, 38)),
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage('assets/images/Rastros da mata.png'),),
                            ),
                          ),
                        ],
                      ),
                    ),    
                  ),
                ],
              ),
              Center(
                child: conteudoPaginaHome(),
              )
            ],
          ),
        ), 
      ),
    );
  }
}

class conteudoPaginaHome extends StatefulWidget {
  @override
  State<conteudoPaginaHome> createState() => _conteudoPaginaHomeState();
}

class _conteudoPaginaHomeState extends State<conteudoPaginaHome> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [       
            Padding(padding: EdgeInsets.all(20.0)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: Text('Seja bem-vindo(a) ao cantinho da',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Antic',
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0),
                  child: Text('Família Rastros!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Antic',
                      color: Color.fromARGB(255, 12, 99, 56),
                      fontSize: 40.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20.0),
                  child: Text('Aqui você encontra informações que permitem o cultivo de frutas, verduras, legumes, PANCs e temperos em pequenos espaços, possibilitando aproveitar aqueles cantinhos da sua casa.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Antic',
                      color: Color.fromARGB(255, 84, 84, 84),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Image(image: AssetImage('assets/images/segurando-planta.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ], 
            ),
          ],
        ),
      ),
    );
  }
}
