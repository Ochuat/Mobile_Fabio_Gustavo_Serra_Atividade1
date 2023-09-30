import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'layout/bottombar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pop(context);
        Navigator.push(
          context, 
          MaterialPageRoute(
            //builder: (context) => TopBar()
            builder: (context) => BottomBar()
          )
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black87,
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 183, 58, 58),
              Color.fromARGB(255, 239, 68, 255),
              Color.fromARGB(255, 6, 231, 231)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          /*RadialGradient(
            colors: [
              Colors.yellowAccent,
              Colors.yellow,
              Colors.red
            ]
          ),*/
          // Imagem de fundo
          /*image: DecorationImage(
            image: AssetImage("./assets/images/fundo.jpg")
          )*/
        ),
        /* Se estiver executando na Web (Chrome) */
        //child: Image.asset("/images/computer.png")
        /* Se estiver executando no Emulador Android */
        /*child: Image.asset(
          "./assets/images/computer.png"
        )*/
        child: Lottie.asset("./assets/images/auau.json")
      )
    );
  }
}
