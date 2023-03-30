// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, unused_local_variable
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rastros_da_mata/plants.dart';
import 'package:rastros_da_mata/plants/fruits/tomate.dart';
import 'package:rastros_da_mata/plants/herbs/coentro.dart';
import 'package:rastros_da_mata/plants/herbs/hortela.dart';
import 'plants/PANCs/azedinha.dart';
import 'plants/PANCs/beldroega.dart';
import 'plants/PANCs/capuchinha.dart';
import 'plants/PANCs/hibisco.dart';
import 'plants/PANCs/peixinho.dart';
import 'plants/fruits/abacate.dart';
import 'plants/fruits/abacaxi.dart';
import 'plants/fruits/laranja.dart';
import 'plants/fruits/limao.dart';
import 'plants/fruits/morango.dart';
import 'home_page.dart';
import 'plants/greens/agriao.dart';
import 'plants/greens/alface.dart';
import 'plants/greens/couve.dart';
import 'plants/greens/espinafre.dart';
import 'plants/greens/rucula.dart';
import 'plants/herbs/camomila.dart';
import 'plants/herbs/ervadoce.dart';
import 'plants/herbs/tomilho.dart';
import 'plants/vegatables/cenoura.dart';
import 'plants/vegatables/miniabobora.dart';
import 'plants/vegatables/pimentao.dart';
import 'plants/vegatables/vagem.dart';
import 'sobre_pagina.dart';
import 'contato_pagina.dart';
import 'plantas_pagina.dart';

/// Provides access to the ObjectBox Store throughout the app.

void main() async{
  //initialize Hive
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  var box = Hive.openBox('mybox');
  Hive.registerAdapter(PlantsAdapter());

  //run app
  runApp(
    MeuAplicativo(),
  );
}

//ROTAS
class MeuAplicativo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //INICIAIS
        '/':(context) => paginaInit(),
        'sobre':(context) => paginaSobre(),
        'plantas':(context) => paginaPlantas(),
        'contato':(context) => paginaContato(),
        //FRUTOS
        'tomate':(context) => abrirPaginaTomate(),
        'morango':(context) => abrirPaginaMorango(),
        'abacate':(context) => abrirPaginaAbacate(),
        'abacaxi':(context) => abrirPaginaAbacaxi(),
        'laranja':(context) => abrirPaginaLaranja(),
        'limão':(context) => abrirPaginaLimao(),
        //VERDURAS
        'agrião':(context) => abrirPaginaAgriao(),
        'alface':(context) => abrirPaginaAlface(),
        'couve':(context) => abrirPaginaCouve(),
        'espinafre':(context) => abrirPaginaEspinafre(),
        'rucula':(context) => abrirPaginaRucula(),
        //LEGUMES
        'vagem':(context) => abrirPaginaVagem(),
        'cenoura':(context) => abrirPaginaCenoura(),
        'pimentao':(context) => abrirPaginaPimentao(),
        'miniAbobora':(context) => abrirPaginaMiniAbobora(),
        //PANCs
        'azedinha':(context) => abrirPaginaAzedinha(),
        'beldroega':(context) => abrirPaginaBeldroega(),
        'capuchinha':(context) => abrirPaginaCapuchinha(),
        'hibisco':(context) => abrirPaginaHibisco(),
        'peixinho':(context) => abrirPaginaPeixinho(),
        //TEMPEROS
        'hortela':(context) => abrirPaginaHortela(),
        'erva doce':(context) => abrirPaginaErvaDoce(),
        'camomila':(context) => abrirPaginaCamomila(),
        'tomilho':(context) => abrirPaginaTomilho(),
        'coentro':(context) => abrirPaginaCoentro(),
      },
    );
  }
}
//MENU DE GAVETA
class menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 0, 40),
          child: Text('Rastros da Mata',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Antic',
              fontSize: 50.0,
            ),
          ),
        ),
        
        Padding(padding: EdgeInsets.fromLTRB(10, 20, 0, 40),
          child: Column(
            children: [
              TextButton(onPressed: () {
                Navigator.popAndPushNamed(context, '/');
              },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Início',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Antic',
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),        
              ),

              Padding(padding: EdgeInsets.all(20.0),),
              
              TextButton(onPressed: () {
                Navigator.popAndPushNamed(context, 'sobre');
              },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Sobre nós',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Antic',
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),              
              ),

              Padding(padding: EdgeInsets.all(20.0),),
              
              TextButton(onPressed: () {
                Navigator.popAndPushNamed(context, 'plantas');
              },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Plantas',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Antic',
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.all(20.0),),
              
              TextButton(onPressed: () {
                Navigator.popAndPushNamed(context, 'contato');
              },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Contato',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Antic',
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),        
              ),
              
              Padding(padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
                child: Row(
                children: [
                  Icon(Icons.copyright,
                    color: Colors.white,
                    size: 15.0,
                  ),
                  Text('Rastros da Mata 2023',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Antic',
                      fontSize: 15.0,
                    ),
                  ), 
                ],
              ),      //ÍC
              ),

            ],
          ),
        ),       
      ],
    );
  }
}