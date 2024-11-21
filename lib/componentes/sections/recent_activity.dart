import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/sections/temas/my_theme.dart';
import 'package:flutter_application_1/componentes/sections/temas/theme_colors.dart';
import 'package:flutter_application_1/componentes/sections/color_dot.dart';
import 'package:flutter_application_1/componentes/sections/card.dart';
import 'package:flutter_application_1/componentes/sections/conteiner_divisao.dart';

recentActivity(context){
  return Padding(
    padding: const EdgeInsets.all(16),    //deslocamentos nas bordas D, E, C, B
    child: BoxCard(BoxContent: _recentActivityContent(context)),
    );
}

_recentActivityContent(context){
    // adicionado colunas para colocar os widgets um embaixo do outro
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // alinhar widgets horizontal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          // 1 columa = a saida do dinheiro
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
              // coloca o theme ja definido = bolinha
              child: ColorDot (color: ThemeColors.recentActivity
              ['spent']),
              ),
              // columa dos textos = saida do $ e estilo ja definido
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saída'),
                  Text('\$900,45', style: Theme.of(context).
                  textTheme.bodyLarge),
                ],
              )
            ],
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
              // coloca o theme ja definido = bolinha
              child: ColorDot (color: ThemeColors.recentActivity
              ['income']),
              ),
              // columa dos textos = saida do $ e estilo ja definido
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Entrada'),
                  Text('\$9332,35', style: Theme.of(context).
                  textTheme.bodyLarge),
                ],
              )
            ],
          ),
        ],
       ),
       Padding(
         padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
         child: Text('Limite de gastos: \$432,93'),
       ),
       Container(
        clipBehavior: Clip.hardEdge, //cortar tudo que ultrapassar o limite no container
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
         child: LinearProgressIndicator(
          color: ThemeColors.primaryColor,
          value: 0.3,
          minHeight: 10,
         ),
       ),
       Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ConteinerDivisao(),
       ),
       Text('Esse mês você gastou \$1000.00 em produtos de cabelo. Tente abaixar esse custo!'),
        TextButton(
          onPressed: () {},
        child: Text('Diga-me como!', style: TextStyle(fontSize: 16, color: ThemeColors.primaryColor),),
        ),
      ],
    );
  }
