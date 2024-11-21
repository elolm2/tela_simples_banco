import 'package:flutter/material.dart';

// CORES USADAS NA PAGINA
class ThemeColors {
  static const MaterialColor primaryColor = Colors.purple;
  static const List<Color> headerGradient = [
            Color.fromRGBO(119, 0, 200, 1.0),
            Color.fromRGBO(145, 46, 211, 1),
            Color.fromRGBO(180, 79, 247, 1),
 ];

 // BOLINHAS DA ENTRADA E SAIDA
  static const recentActivity = {
    'spent': Color.fromRGBO(255, 0, 0, 1.0),
    'income': Color.fromRGBO(0, 255, 127, 1.0)
  };
    static const pontosConta = {
    'ellipse1': Color.fromRGBO(250, 0, 112, 1),
    'ellipse2': Color.fromRGBO(75, 89, 191, 1),
  };

  // COR USADO NO CARD
  static const divisao = Color.fromRGBO(166, 166, 166, 1);
}