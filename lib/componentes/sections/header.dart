import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/sections/temas/theme_colors.dart';

header(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text.rich(
            TextSpan(
              text: '\$', 
              children: <TextSpan>[
                TextSpan(
                  text: '1000.00',
                  style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
            ),
          ),
          Text('Balanço disponivel'),
        ],), 
        Icon(Icons.account_circle, size: 42,),
        ],
        ),
       ),
     );
  }


