import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Frases do Dia',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Início'),
    );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _randomValue = 0;

  List _phrases = [
    'O importante não é vencer todos os dias, mas lutar sempre.',
    'Maior que a tristeza de não haver vencido é a vergonha de não ter lutado!',
    'É melhor conquistar a si mesmo do que vencer mil batalhas.',
    'Quem ousou conquistar e saiu pra lutar, chega mais longe!'
  ];

  List _authors = [
    'Waldemar Valle Martins',
    'Rui Barbosa',
    'Buda',
    'Charlie Brown Jr '
  ];

  void _incrementCounter() {
    setState(() {
      _randomValue = Random().nextInt(4); //0, 1, 2, 3
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Aperte o botão para ler uma frase selecionada para você:',
            ),
            Text(
              _phrases[_randomValue],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              _authors[_randomValue],
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
}
