import 'package:flutter/material.dart';


// TEMA DO CARDS

class BoxCard extends StatelessWidget {
  final Widget BoxContent;
  const BoxCard({Key? Key, required this.BoxContent }) : super(key: Key);

  @override
  Widget build(BuildContext context){
    // ink = mesma coisa que o container 
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[6],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
      ),
      child: BoxContent,
    );
  }
}