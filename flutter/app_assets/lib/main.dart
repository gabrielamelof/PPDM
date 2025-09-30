import 'package:app_assets/Tela2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaHome(),
    );
  }
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //para prover os componentes para a minha tela
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), //define uma fonte padrão para toda a tela
      ),
      debugShowCheckedModeBanner: false, //não mostrar a fitinha no topo quando roda
      home: Scaffold( //separa a tela entre AppBar e body
        appBar: AppBar(title: Text('Tela Assets')), // Barra superior
        body: Center(
          child: Column( //elementos um abaixo do outro
            children: [ //Vários filhos

              Image.network("https://cdn0.umcomo.com.br/pt/posts/5/2/3/como_se_chamam_as_monster_high_1325_orig.jpg", width: 200,), //adiciona a imagem pela url da internet
              // Image.asset("assets/images/monster_high.jpg", width: 200,), // adiciona a imagem localmente, da pasta assets
              // Text("Esse é o texto com a fonte baixada", style: TextStyle(fontFamily: "poppins"),),  //adiciona uma fonte que está na pasta assets
              // Text("Esse é o texto com a biblioteca", style: GoogleFonts.roboto(),),
              Text("Esse é o texto com a biblioteca"),
              ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Tela2()));
              }, child: Icon(Icons.play_arrow))

            ],
          ),
        ),

      ),
    ); 
  }
}

