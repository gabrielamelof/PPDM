
import 'package:app_assets/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela2")),
        body: Center(
          child: Column(
            children: [
              Text("Bem vindo a tela 2", style: GoogleFonts.poppins(),),
              Image.asset("assets/images/monster_high.jpg", width: 200,),
              ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TelaHome()));
              }, child: Icon(Icons.play_arrow))
            ],
          ),
        ),
      ),
    );
  }
}