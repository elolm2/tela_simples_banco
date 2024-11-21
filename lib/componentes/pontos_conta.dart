import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/sections/card.dart';
import 'package:flutter_application_1/componentes/sections/temas/my_theme.dart';
import 'package:flutter_application_1/componentes/sections/temas/theme_colors.dart';
import 'package:flutter_application_1/componentes/sections/color_dot.dart';
import 'package:flutter_application_1/componentes/sections/conteiner_divisao.dart';


class PontosConta extends StatelessWidget {
  const PontosConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Pontos da conta', 
            style: Theme.of(context).textTheme.titleMedium),
          ),
         BoxCard(BoxContent: _PontosContaContent(context)),
        ],    // children
      ),  //column 
    );  //padding
  }  // widget build
} //pontosconta

_PontosContaContent(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0), //em baixo
          child: Text('Pontos totais:'),
     ),

      Text('3000', style: Theme.of(context).
      textTheme.bodyLarge
      ),

      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ConteinerDivisao(),
      ),

      Text(
      'objetivos:', style: Theme.of(context).
      textTheme.titleMedium,
      ),

      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(     // colocar um na frente do outro
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.pontosConta['ellipse1'])
            ),
            // fora do 'row', para ficar abaixo
            Text('Entrega grátis: 15000pts'),
          ]
        ),
      ),

        Row(     // colocar um na frente do outro
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.pontosConta['ellipse2'])
            ),
            // fora do 'row', para ficar abaixo
            Text('1 mês de compras online: 30000pts'),
          ],  //children
        ), //row

        
    ],  // children
  );  // column
} //_pontoscontaContent
