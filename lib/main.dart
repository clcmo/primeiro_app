import 'package:flutter/material.dart';
import 'package:untitled/myApp.dart';

void main(){
  runApp(MaterialApp(
    //retira a faixa do debbug da tela
    debugShowCheckedModeBanner: false,
    //chamo minha classe onde está a UI
    home: MyApp(),
  ));
}