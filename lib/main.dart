import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/sections/temas/my_theme.dart';
import 'package:flutter_application_1/telas/home.dart';

void main(){
  runApp(const Elobank());
}

class Elobank extends StatelessWidget {
  const Elobank({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elobank',
      theme: MyTheme,
      home: Home(),
    );
  }
}
