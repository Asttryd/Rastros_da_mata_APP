// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:rastros_da_mata/icons.dart';
import '../../main.dart';
import '../../models.dart';
import '../../plants.dart';

class abrirPaginaMorango extends StatefulWidget {

  @override
  State<abrirPaginaMorango> createState() => _abrirPaginaMorangoState();
}

class _abrirPaginaMorangoState extends State<abrirPaginaMorango> {

  @override
  Widget build(BuildContext context) {
    writeData();
    Plants morango = myBox.get('fruit2');
    return StreamBuilder<Plants>(
      stream: null,
      builder: (context, snapshot) {
        return Builder(
          builder: (context) {
            return Scaffold(
              backgroundColor: Color.fromARGB(255, 220, 237, 200),
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  IconButton(onPressed: () {
                    Navigator.popAndPushNamed(context, 'plantas');
                  }, icon: Icon
                      (
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                ],
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
                        Container(
                          //Texto Header BANNER
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 70.0),
                          child: Text(morango.name,
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
                                    image: DecorationImage(image: AssetImage(morango.imgUrl)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: conteudoPaginaAbertaMorango(),
                    ),
                  ],
                ),
              ),
            ), 
          );
        }
      );
    }
  );
  }
}

class conteudoPaginaAbertaMorango extends StatefulWidget {

  @override
  State<conteudoPaginaAbertaMorango> createState() => _conteudoPaginaAbertaMorangoState();
}

class _conteudoPaginaAbertaMorangoState extends State<conteudoPaginaAbertaMorango> {
  @override
  Widget build(BuildContext context) {
    writeData();
    Plants morango = myBox.get('fruit2');
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    //LUZ SOLAR
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Icon(
                        MyFlutterApp.bright_ray_shine_sun_sunny_icon,
                        size: 50,
                        color: Color.fromARGB(255, 12, 99, 56),
                      ),
                    ),
                    Text('Luz solar',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Antic',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(morango.sunlight,
                      style: TextStyle(
                        color: Color.fromARGB(255, 87, 87, 87),
                        fontFamily: 'Antic',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Icon(
                        MyFlutterApp.seed_agriculture_seeding_grain_planting_icon,
                        size: 50,
                        color: Color.fromARGB(255, 12, 99, 56),
                      ),  
                    ),
                    Text('Desenvolvimento',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Antic',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(morango.developmentEta,
                      style: TextStyle(
                        color: Color.fromARGB(255, 87, 87, 87),
                        fontFamily: 'Antic',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Icon(
                        MyFlutterApp.work_tool_construction_gardening_garden_icon,
                        size: 70,
                        color: Color.fromARGB(255, 12, 99, 56),
                      ),
                    ),
                    Text('Colheita',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Antic',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(morango.harvest,
                      style: TextStyle(
                        color: Color.fromARGB(255, 87, 87, 87),
                        fontFamily: 'Antic',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20.0),
              child: Text(morango.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'Antic',
                  color: Color.fromARGB(255, 84, 84, 84),
                  fontSize: 20.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(MyFlutterApp.blood_droplet_health_healthcare_medic_icon,
                  color: Color.fromARGB(255, 12, 99, 56),
                  size: 40,
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text('Irrigação',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Antic',
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20.0),
              child: Text(morango.irrigation,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Antic',
                  color: Color.fromARGB(255, 84, 84, 84),
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(
                  Icons.cloud,
                  color: Color.fromARGB(255, 12, 99, 56),
                  size: 40,
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text('Temperatura ideal',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Antic',
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20.0),
              child: Text(morango.idealTemperature,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Antic',
                  color: Color.fromARGB(255, 84, 84, 84),
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(
                  Icons.grass_sharp,
                  color: Color.fromARGB(255, 12, 99, 56),
                  size: 40,
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text('Plantio',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Antic',
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20.0),
              child: Text(morango.planting,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Antic',
                  color: Color.fromARGB(255, 84, 84, 84),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(
                  Icons.yard_outlined,
                  color: Color.fromARGB(255, 12, 99, 56),
                  size: 40,
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text('Quando faço o replantio?',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Antic',
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20.0),
              child: Text(morango.replanting,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Antic',
                  color: Color.fromARGB(255, 84, 84, 84),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}