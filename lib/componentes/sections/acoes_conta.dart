import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/sections/card.dart';

class AcoesConta extends StatelessWidget {
  const AcoesConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        // alinhar em columa horizontalmente = ficar no inicio da tela
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text('Ações da conta', 
            style: Theme.of(context).textTheme.titleMedium,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: BoxCard(
                  BoxContent: _AcoesContaContent(icon: Icon(Icons.account_balance_wallet), 
                  text: 'Depositar',
                ),
               ),
              ),
              InkWell(
                onTap:(){},
               child: BoxCard(
                  BoxContent: _AcoesContaContent(icon: Icon(Icons.cached), 
                  text: 'Transferir',
                ),
               ),
             ),
             InkWell(
              onTap:(){},
               child: BoxCard(
                  BoxContent: _AcoesContaContent(icon: Icon(Icons.center_focus_strong), 
                  text: 'Ler',
                ),
               ),
             ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AcoesContaContent extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AcoesContaContent({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: Column(    //columas não tem tamanhos definidos
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
            ), 
            Text(text),
        ],
      ),
    );
  }
}