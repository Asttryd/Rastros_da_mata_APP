// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:rastros_da_mata/icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'main.dart';

class paginaContato extends StatelessWidget {

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

                  Container(
                  //Texto Header BANNER
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 70.0),
                    child: Text("Contato",
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
                child: conteudoPaginaContato(),
              )
            ],
          ),
        ), 
      ),
    );
  }
}

 _launchInstagram() async {
    const nativeUrl = "instagram://user?username=rastros_da_mata";
    //const webUrl = "https://www.instagram.com/rastros_da_mata/";
      await launchUrlString(nativeUrl);
  }

  _launchEmail() async {
    const nativeEmail = "mailto:rastrosdamata@gmail.com";
    //const webUrl = "https://www.instagram.com/rastros_da_mata/";
      await launchUrlString(nativeEmail);
  }

  _launchWhatsapp() async {
   const nativeNumber = "whatsapp://send?phone=5511960166712";
    //const webNumber = "https://wa.me/5511960166712";
      await launchUrlString(nativeNumber);
  }

class conteudoPaginaContato extends StatefulWidget {

  @override
  State<conteudoPaginaContato> createState() => _conteudoPaginaContatoState();
}

class _conteudoPaginaContatoState extends State<conteudoPaginaContato> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //TEXTO
            Padding(padding: EdgeInsets.all(20.0),
              child: Text('Ficou com dúvidas ou quer fazer uma sugestão? Entre em contato conosco!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'Antic',
                  color: Color.fromARGB(255, 84, 84, 84),
                  fontSize: 20.0,
                ),
              ),
            ),
            
            //BOTÕES
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Row(
                    children: [
                      IconButton(onPressed: () async {
                        _launchInstagram();
                      },
                        icon: Icon(
                          MyFlutterApp.instagram_photo_share_icon,
                          size: 50.0,
                          color: Color.fromARGB(255, 62, 150, 62),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0)),
                      IconButton(onPressed: () async {
                        _launchEmail();
                      },
                        icon: Icon(
                          MyFlutterApp.email_envelope_gmail_letter_logo_icon,
                          size: 50.0,
                          color: Color.fromARGB(255, 62, 150, 62),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0)),
                      IconButton(onPressed: () async {
                        _launchWhatsapp();
                      },
                        icon: Icon(
                          MyFlutterApp.whatsapp_chat_logo_social_social_media_icon,
                          size: 50.0,
                          color: Color.fromARGB(255, 62, 150, 62),
                        ),
                      ),
                    ],
                  ),
                ),        
              ],
            ),
            //IMAGEM
            Container(
              margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: Image(image: AssetImage('assets/images/pessoa-mexendo-no-celular.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

