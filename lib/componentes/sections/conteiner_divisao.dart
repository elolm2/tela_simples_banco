import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/sections/temas/theme_colors.dart';

class ConteinerDivisao extends StatelessWidget {
  const ConteinerDivisao({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 166, 166, 166))
      ),
    );
  }
}