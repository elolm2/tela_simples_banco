import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/pontos_conta.dart';
import 'package:flutter_application_1/componentes/sections/acoes_conta.dart';
import 'package:flutter_application_1/componentes/sections/header.dart';
import 'package:flutter_application_1/componentes/sections/recent_activity.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: <Widget>[
        header(context),
        recentActivity(context),
        AcoesConta(),
        PontosConta(),
      ],
    ),);
  }
}
  
