import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.pinkAccent,
        title: Text("Widget Card com Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(23.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            myCardWidget(meuIcone: Icons.local_movies, meuTexto:"Filme"),
            myCardWidget(meuIcone: Icons.music_video, meuTexto:"OST"),

          ],
        ),
      ),
    );
  }
}

class myCardWidget extends StatelessWidget{
  // iniciando construtor
  myCardWidget({required this.meuIcone, required this.meuTexto});
  // definindo variaveis a usar no Card
  final IconData meuIcone;
  final String meuTexto;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(meuIcone,
                  size: 40.0, color: Colors.grey),
              title:  Text(meuTexto,
                style: const TextStyle(fontSize: 20.0),
              ),
              subtitle:
              const Text('VINGADORES: ULTIMATO - 2019, Marvel Comics DC.'),
            ),
            ButtonBarTheme(
              data: const ButtonBarThemeData(alignment: MainAxisAlignment.center),
              child:  ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Votar'),
                    onPressed: (){

                    },
                  ),
                  FlatButton(
                    child: const Text('Sinopse'),
                    onPressed: (){

                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
