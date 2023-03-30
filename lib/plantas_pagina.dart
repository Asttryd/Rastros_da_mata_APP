// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:rastros_da_mata/plants.dart';
import 'main.dart';
import 'models.dart';


class paginaPlantas extends StatelessWidget {
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
                    child: Text("PLANTAS",
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
                child: conteudoPaginaPlantas(),
              )
            ],
          ),
        ), 
      ),
    );
  }
}

class conteudoPaginaPlantas extends StatefulWidget {

  @override
  State<conteudoPaginaPlantas> createState() => _conteudoPaginaPlantasState();
}

class _conteudoPaginaPlantasState extends State<conteudoPaginaPlantas> {
   @override
  
  Widget build(BuildContext context) {
    //TODAS AS PLANTAS
    writeData();
    //FRUTAS
    Plants tomate = myBox.get('fruit1');
    Plants morango = myBox.get('fruit2');
    Plants abacaxi = myBox.get('fruit3');
    Plants abacate = myBox.get('fruit4');
    Plants laranja = myBox.get('fruit5');
    Plants limao = myBox.get('fruit6');
    //VERDURAS
    Plants alface = myBox.get('greens1');
    Plants couve = myBox.get('greens2');
    Plants agriao = myBox.get('greens3');
    Plants espinafre = myBox.get('greens4');
    Plants rucula = myBox.get('greens5');
    //LEGUMES
    Plants vagem = myBox.get('vegetable1');
    Plants cenoura = myBox.get('vegetable2');
    Plants pimentao = myBox.get('vegetable3');
    Plants miniAbobora = myBox.get('vegetable4');
    //PANCS
    Plants azedinha = myBox.get('PANC1');
    Plants beldroega = myBox.get('PANC2');
    Plants capuchinha = myBox.get('PANC3');
    Plants hibisco = myBox.get('PANC4');
    Plants peixinho = myBox.get('PANC5');
    //TEMPEROS
    Plants hortela = myBox.get('herb1');
    Plants ervadoce = myBox.get('herb2');
    Plants camomila = myBox.get('herb3');
    Plants tomilho = myBox.get('herb4');
    Plants coentro = myBox.get('herb5');
    return StreamBuilder<Plants>(
      stream: null,
      builder: (context, snapshot) {
        return Builder(
          builder: (context) {
            return SingleChildScrollView(
                child: Row(
                  children: [
                    //COLUNA ESQUERDA
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //TOMATE
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'tomate');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(tomate.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(42, 170, 0, 0),
                                            child: Text(tomate.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                //MORANGO
                                TextButton(
                                  onPressed: () {
                                    Navigator.popAndPushNamed(context, 'morango');
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 195,
                                        width: 145,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Color.fromARGB(255, 93, 136, 74),
                                          image: DecorationImage(image: AssetImage(morango.imgUrl)),
                                        ),
                                        padding: EdgeInsets.fromLTRB(35, 168, 0, 0),
                                        child: Text(morango.name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Antic',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                //LARANJA
                                TextButton(
                                  onPressed: () {
                                    Navigator.popAndPushNamed(context, 'laranja');
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 195,
                                        width: 145,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Color.fromARGB(255, 93, 136, 74),
                                          image: DecorationImage(image: AssetImage(laranja.imgUrl)),
                                        ),
                                        padding: EdgeInsets.fromLTRB(43, 168, 0, 0),
                                        child: Text(laranja.name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Antic',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                //AGRIÃO
                                TextButton(
                                  onPressed: () {
                                    Navigator.popAndPushNamed(context, 'agrião');
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 195,
                                        width: 145,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Color.fromARGB(255, 93, 136, 74),
                                          image: DecorationImage(image: AssetImage(agriao.imgUrl)),
                                        ),
                                        padding: EdgeInsets.fromLTRB(44, 168, 0, 0),
                                        child: Text(agriao.name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Antic',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //COUVE
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'couve');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(couve.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(47, 170, 0, 0),
                                            child: Text(couve.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //RÚCULA
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'rucula');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(rucula.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(46, 170, 0, 0),
                                            child: Text(rucula.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //CENOURA
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'cenoura');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(cenoura.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(40, 170, 0, 0),
                                            child: Text(cenoura.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //MINI ABÓBORA
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'miniAbobora');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(miniAbobora.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(16, 170, 0, 0),
                                            child: Text(miniAbobora.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //BELDROEGA
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'beldroega');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(beldroega.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(33, 170, 0, 0),
                                            child: Text(beldroega.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //LIMÃO
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'hibisco');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(hibisco.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(45, 170, 0, 0),
                                            child: Text(hibisco.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //HORTELÃ
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'hortela');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(hortela.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(42, 170, 0, 0),
                                            child: Text(hortela.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //CAMOMILA
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'camomila');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(camomila.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(32, 170, 0, 0),
                                            child: Text(camomila.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //COENTRO
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'coentro');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(coentro.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(40, 170, 0, 0),
                                            child: Text(coentro.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //COLUNA DIREITA
                  Column(
                      children: [
                        Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //ABACAXI
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'abacaxi');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(abacaxi.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(40, 170, 0, 0),
                                            child: Text(abacaxi.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //ABACATE
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'abacate');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(abacate.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(38, 170, 0, 0),
                                            child: Text(abacate.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),  
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //LIMÃO
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'limão');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(limao.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(50, 170, 0, 0),
                                            child: Text(limao.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                        Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //ALFACE
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'alface');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(alface.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(50, 170, 0, 0),
                                            child: Text(alface.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                        
                      ),
                        Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //ESPINAFRE
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'espinafre');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(espinafre.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(37, 170, 0, 0),
                                            child: Text(espinafre.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                        Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //VAGEM
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'vagem');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(vagem.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(45, 168.5, 0, 0),
                                            child: Text(vagem.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                        Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //PIMENTÃO
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'pimentao');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(pimentao.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(35, 170, 0, 0),
                                            child: Text(pimentao.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //AZEDINHA
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'azedinha');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(azedinha.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(35, 170, 0, 0),
                                            child: Text(azedinha.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //CAPUCHINHA
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'capuchinha');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(capuchinha.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(27, 170, 0, 0),
                                            child: Text(capuchinha.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //PEIXINHO
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'peixinho');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(peixinho.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(40, 170, 0, 0),
                                            child: Text(peixinho.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //ERVA DOCE
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'erva doce');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(ervadoce.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(35, 170, 0, 0),
                                            child: Text(ervadoce.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  //TOMILHO
                                  TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(context, 'tomilho');
                                    },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 195,
                                            width: 145,
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Color.fromARGB(255, 93, 136, 74),
                                              image: DecorationImage(image: AssetImage(tomilho.imgUrl)),
                                            ),
                                            padding: EdgeInsets.fromLTRB(42, 170, 0, 0),
                                            child: Text(tomilho.name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Antic',
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),   
            );
          }
        );
      }
    );
  }
}