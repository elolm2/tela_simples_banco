import 'package:flutter/material.dart';

// TEMA DA BOLINHA = ENTRADA E GAST0S

class ColorDot extends StatelessWidget {
final Color? color;
const ColorDot({Key? Key, required this.color }) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}   